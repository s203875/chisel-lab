circuit Accu :
  module Accu :
    input clock : Clock
    input reset : UInt<1>
    input io_din : UInt<8>
    input io_setZero : UInt<1>
    output io_dout : UInt<8>

    reg resetEnableReg : UInt<8>, clock with :
      reset => (UInt<1>("h0"), resetEnableReg) @[Accu.scala 11:32]
    node _T = add(io_din, resetEnableReg) @[Accu.scala 15:29]
    node _T_1 = tail(_T, 1) @[Accu.scala 15:29]
    node _GEN_0 = mux(io_setZero, UInt<1>("h0"), _T_1) @[Accu.scala 12:21 Accu.scala 13:20 Accu.scala 15:20]
    node res = resetEnableReg @[Accu.scala 10:17 Accu.scala 17:7]
    io_dout <= res @[Accu.scala 25:11]
    resetEnableReg <= mux(reset, UInt<8>("h0"), _GEN_0) @[Accu.scala 11:32 Accu.scala 11:32]