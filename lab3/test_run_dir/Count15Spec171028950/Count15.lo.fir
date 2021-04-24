circuit Count15 :
  module Count15 :
    input clock : Clock
    input reset : UInt<1>
    output io_dout : UInt<8>

    reg cntReg : UInt<4>, clock with :
      reset => (UInt<1>("h0"), cntReg) @[Count15.scala 9:23]
    node _T = add(cntReg, UInt<1>("h1")) @[Count15.scala 11:19]
    node _T_1 = tail(_T, 1) @[Count15.scala 11:19]
    node res = cntReg @[Count15.scala 8:17 Count15.scala 13:7]
    io_dout <= res @[Count15.scala 16:11]
    cntReg <= mux(reset, UInt<4>("h0"), _T_1) @[Count15.scala 9:23 Count15.scala 9:23 Count15.scala 11:10]