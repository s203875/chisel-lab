import chisel3._

class Accu extends Module {
  val io = IO(new Bundle {
    val din = Input(UInt(8.W))
    val setZero = Input(Bool())
    val dout = Output(UInt(8.W))
  })

  val res = Wire(UInt())
  val resetEnableReg = RegInit (0.U(8.W))
  when (io.setZero) {
    resetEnableReg := 0.U
  } .otherwise {
    resetEnableReg := io.din+resetEnableReg
  }
  res := resetEnableReg

    // ***** your code starts here *****

  // dummy code to make it compile

  // ***** your code ends here *****

  io.dout := res
}