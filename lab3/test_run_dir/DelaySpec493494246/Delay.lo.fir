circuit Delay :
  module Delay :
    input clock : Clock
    input reset : UInt<1>
    input io_din : UInt<8>
    output io_dout : UInt<8>

    reg circ : UInt<8>, clock with :
      reset => (UInt<1>("h0"), circ) @[Delay.scala 11:20]
    reg REG : UInt<8>, clock with :
      reset => (UInt<1>("h0"), REG) @[Delay.scala 12:17]
    node res = REG @[Delay.scala 9:17 Delay.scala 12:7]
    io_dout <= res @[Delay.scala 18:11]
    circ <= io_din @[Delay.scala 11:20]
    REG <= circ @[Delay.scala 12:17]