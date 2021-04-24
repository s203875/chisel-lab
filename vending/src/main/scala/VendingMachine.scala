import chisel3._
import chisel3.util._

class VendingMachine(maxCount: Int) extends Module {
  val io = IO(new Bundle {
    val price = Input(UInt(5.W))
    val coin2 = Input(Bool())
    val coin5 = Input(Bool())
    val buy = Input(Bool())
    val releaseCan = Output(Bool())
    val alarm = Output(Bool())
    val seg = Output(UInt(7.W))
    val an = Output(UInt(4.W))
  })

  val sevSeg = WireInit(0.U)
  val sum = RegInit(0.U(8.W))
  val select = WireDefault("b0001".U(4.W))
  val lys1 = Module (new SevenSegDec)
  lys1.io.in:= sum(7,4)
  val sum1 = Module (new BcdTable)
  sum1.io.adress := sum
  val pris = Module (new BcdTable)
  pris.io.adress := io.price
  io.alarm:=false.B
  io.releaseCan:=false.B

  val relReg = RegInit(false.B)
  val alar = RegInit(false.B)
  val idle :: co5 :: co2  :: re :: al :: Nil = Enum(5)
  val stateReg = RegInit(idle)

  val risingb = io.buy & !RegNext(io.buy)
  val fallingb = !io.buy & RegNext(io.buy)
  val rising5 = io.coin5 & !RegNext(io.coin5)
  val rising2 = io.coin2 & !RegNext(io.coin2)

 // when(risingb) {
   // when(sum >= io.price) {
     // relReg := true.B
    //  alar := false.B
   //   sum := sum - io.price
    //} otherwise {
    //  alar := true.B
    //  relReg := false.B
   // }
  //}.elsewhen(rising5){
   // sum:=sum+5.U
 // }.elsewhen(rising2){
   // sum:=sum+2.U
  //}


  switch(stateReg){
    is(idle) {
      when(risingb) {
        when(sum>=io.price){
          stateReg:=re
          relReg:=true.B
        } otherwise{
         stateReg:=al
          alar:=true.B
        }
      }.elsewhen(rising5) {
        stateReg := co5
      }.elsewhen(rising2) {
        stateReg := co2
      }
    }
    is (co5){
      stateReg:=idle
    }
    is(co2){
      stateReg:=idle
    }
    is (re){
      when(fallingb) {
        stateReg := idle
      }
    }
    is(al){
        when(fallingb) {
          stateReg := idle
        }
      }
  }

  when(stateReg===idle){
    io.alarm:=false.B
    io.releaseCan:=false.B
  }
  when(stateReg===co5){
    sum:=sum+5.U
  }
  when(stateReg===co2){
    sum:=sum+2.U
  }
  when(stateReg===re){
    io.releaseCan:=true.B
    io.alarm:=false.B
    sum:=sum-io.price
  }
  when(stateReg===al){
    io.alarm:=true.B
    io.releaseCan:=false.B
  }

  when(fallingb){
    relReg:=false.B
    alar:=false.B
  }

  val tickCounterReg = RegInit(0.U(32.W)) //Etablerer første counter
  val tick = tickCounterReg === (maxCount-1).U //N=100K

  tickCounterReg := tickCounterReg+1.U //Første counter tæller op, indtil tick=true
  when (tick) {
    tickCounterReg := 0.U //Når vi rammer tick, så genstartes tickcounter
  }

  val lowFrequCntReg = RegInit(0.U(2.W)) //Anden counter
  when (tick) {
    lowFrequCntReg := lowFrequCntReg+1.U //Hver gang tick er true, går counter 1 op
  }

  when (lowFrequCntReg === "b00".U) {
    lys1.io.in := sum1.io.data(7,4)
    sevSeg := lys1.io.out
    select := "b0111".U
  }
  when (lowFrequCntReg ==="b01".U) {
    lys1.io.in := sum1.io.data(3,0)
    sevSeg := lys1.io.out
    select := "b1011".U
  }

  when (lowFrequCntReg === "b10".U) {
    lys1.io.in := pris.io.data(7,4)
    sevSeg := lys1.io.out
    select := "b1101".U
  }

  when (lowFrequCntReg === "b11".U) {
    lys1.io.in := pris.io.data(3,0)
    sevSeg := lys1.io.out
    select := "b1110".U
  }

  // ***** some dummy connections *****


  io.seg := ~sevSeg
  io.an := select

}

// generate Verilog
object VendingMachine extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new VendingMachine(100000))
}

