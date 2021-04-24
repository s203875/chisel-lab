import chisel3._
import chisel3.util._

class CountSevenSeg extends Module {
  val io = IO(new Bundle {
    val seg = Output(UInt(7.W))
    val an = Output(UInt(4.W))
  })


  // *** your code starts here
  val tickCounterReg = RegInit(0.U(32.W)) //Etablerer første counter
  val tick = tickCounterReg === (10000000-1).U //N=50 M

  tickCounterReg := tickCounterReg+1.U //Første counter tæller op, indtil tick=true
  when (tick) {
    tickCounterReg := 0.U //Når vi rammer tick, så genstartes tickcounter
  }

  val lowFrequCntReg = RegInit(0.U(4.W)) //Anden counter
  when (tick) {
    lowFrequCntReg := lowFrequCntReg+1.U //Hver gang tick er true, går counter 1 op
  }

  val dec = Module (new SevenSegDec)
  dec.io.in:=lowFrequCntReg
  // *** your code ends here

  io.seg := dec.io.out
  io.an := "b1110".U
}

// generate Verilog
object CountSevenSeg extends App {
  (new chisel3.stage.ChiselStage).emitVerilog(new CountSevenSeg())
}