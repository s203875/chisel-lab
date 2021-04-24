import chisel3._

class Count6 extends Module {
  val io = IO(new Bundle {
    val dout = Output(UInt(8.W))
  })

  val res = Wire(UInt())
  val cntReg = RegInit(0.U(8.W))
  cntReg := Mux(cntReg === 6.U, 0.U, cntReg+1.U)
  // ***** your code starts here *****
  res := cntReg
  // dummy code to make it compile

  // ***** your code ends here *****

  io.dout := res
}