import chisel3._
import chisel3.util._

class SevenSegDec extends Module {
  val io = IO(new Bundle {
    val in = Input(UInt(4.W))
    val out = Output(UInt(7.W))
  })

  val sevSeg = WireDefault(0.U)
  val sel = io.in //input

  // *** add your table from Lab 5 here or use the version from Lab 6.
  switch (sel) {
    is ("b0000".U) {sevSeg := "b0111111".U}
    is ("b0001".U) {sevSeg := "b0000110".U}
    is ("b0010".U) {sevSeg := "b1011011".U}
    is ("b0011".U) {sevSeg := "b1001111".U}
    is ("b0100".U) {sevSeg := "b1100110".U}
    is ("b0101".U) {sevSeg := "b1101101".U}
    is ("b0110".U) {sevSeg := "b1111101".U}
    is ("b0111".U) {sevSeg := "b0000111".U}
    is ("b1000".U) {sevSeg := "b1111111".U}
    is ("b1001".U) {sevSeg := "b1101111".U}
    is ("b1010".U) {sevSeg := "b1110111".U}
    is ("b1011".U) {sevSeg := "b1111100".U}
    is ("b1100".U) {sevSeg := "b0111001".U}
    is ("b1101".U) {sevSeg := "b1011110".U}
    is ("b1110".U) {sevSeg := "b1111001".U}
    is ("b1111".U) {sevSeg := "b1110001".U}
  }
  // *** end adding the table

  io.out := sevSeg
}

