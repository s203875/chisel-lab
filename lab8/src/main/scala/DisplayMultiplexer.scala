import chisel3._
import chisel3.util._

class DisplayMultiplexer(maxCount: Int) extends Module {
  val io = IO(new Bundle {
    val sum = Input(UInt(8.W))
    val price = Input(UInt(8.W))
    val seg = Output(UInt(7.W))
    val an = Output(UInt(4.W))
  })

  val sevSeg = WireDefault("b1111111".U(7.W))
  val select = WireDefault("b0001".U(4.W))

  // *** your code starts here

  val lys1 = Module (new SevenSegDec)
  lys1.io.in := io.sum(7,4)

  val sum1 = Module (new BcdTable)
  sum1.io.adress := io.sum

  val pris = Module (new BcdTable)
  pris.io.adress :=io.price

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

  // *** your code ends here

  io.seg := ~sevSeg
  io.an := select
}
