circuit Count6 :
  module Count6 :
    input clock : Clock
    input reset : UInt<1>
    output io_dout : UInt<8>

    reg cntReg : UInt<8>, clock with :
      reset => (UInt<1>("h0"), cntReg) @[Count6.scala 9:23]
    node _T = eq(cntReg, UInt<3>("h6")) @[Count6.scala 10:24]
    node _T_1 = add(cntReg, UInt<1>("h1")) @[Count6.scala 10:44]
    node _T_2 = tail(_T_1, 1) @[Count6.scala 10:44]
    node _T_3 = mux(_T, UInt<1>("h0"), _T_2) @[Count6.scala 10:16]
    node res = cntReg @[Count6.scala 8:17 Count6.scala 12:7]
    io_dout <= res @[Count6.scala 17:11]
    cntReg <= mux(reset, UInt<8>("h0"), _T_3) @[Count6.scala 9:23 Count6.scala 9:23 Count6.scala 10:10]