import chisel3._

class Delay extends Module {
  val io = IO(new Bundle {
    val din = Input(UInt(8.W))
    val dout = Output(UInt(8.W))
  })

  val res = Wire(UInt())
  // ***** your code starts here *****
 val circ = RegNext(io.din)
  res := RegNext(circ)
  // below is dummy code to make this example compile


  // ***** your code ends here *****

  io.dout := res
}