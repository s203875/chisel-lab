circuit Mux4 :
  module Mux4 :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    input io_c : UInt<1>
    input io_d : UInt<1>
    input io_sel : UInt<2>
    output io_y : UInt<1>

    node _T = eq(io_sel, UInt<1>("h0")) @[Mux4.scala 21:18]
    node _T_1 = eq(io_sel, UInt<1>("h1")) @[Mux4.scala 23:24]
    node _T_2 = eq(io_sel, UInt<2>("h2")) @[Mux4.scala 25:24]
    node _GEN_0 = mux(_T_2, io_c, io_d) @[Mux4.scala 25:33 Mux4.scala 26:12 Mux4.scala 28:12]
    node _GEN_1 = mux(_T_1, io_b, _GEN_0) @[Mux4.scala 23:33 Mux4.scala 24:12]
    node _GEN_2 = mux(_T, io_a, _GEN_1) @[Mux4.scala 21:27 Mux4.scala 22:12]
    io_y <= _GEN_2