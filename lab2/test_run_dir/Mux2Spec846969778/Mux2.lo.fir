circuit Mux2 :
  module Mux2 :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    input io_sel : UInt<1>
    output io_y : UInt<1>

    node _GEN_0 = mux(io_sel, io_b, io_a) @[Mux2.scala 17:16 Mux2.scala 18:9 Mux2.scala 20:9]
    node res = _GEN_0 @[Mux2.scala 14:17]
    io_y <= res @[Mux2.scala 24:8]