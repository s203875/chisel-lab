circuit UseMux2 :
  module UseMux2 :
    input clock : Clock
    input reset : UInt<1>
    input io_sel : UInt<1>
    output io_dout : UInt<1>

    node _T = eq(io_sel, UInt<1>("h1")) @[UseMux2.scala 18:16]
    node _GEN_0 = mux(_T, UInt<1>("h1"), UInt<1>("h0")) @[UseMux2.scala 18:25 UseMux2.scala 19:9 UseMux2.scala 17:7]
    node res = UInt<1>("h0") @[UseMux2.scala 12:17 UseMux2.scala 23:7]
    io_dout <= res @[UseMux2.scala 27:11]