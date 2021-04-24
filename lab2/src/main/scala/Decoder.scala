import chisel3._
import chisel3.util._

class Decoder extends Module {
  val io = IO(new Bundle {
    val sel = Input(UInt(2.W))
    val out = Output(UInt(4.W))
  })

  val sel = io.sel
  val dec = WireDefault(0.U)

  // ***** your code starts here *****
switch (sel) {
  is ("b00".U) {dec := "b0001".U}
  is ("b01".U) {dec := "b0010".U}
  is ("b10".U) {dec := "b0100".U}
  is ("b11".U) {dec := "b1000".U}
}
  // ***** your code ends here *****

  io.out := dec
}


