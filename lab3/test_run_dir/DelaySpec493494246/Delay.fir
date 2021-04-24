;buildInfoPackage: chisel3, version: 3.4.1, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Delay : 
  module Delay : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip din : UInt<8>, dout : UInt<8>}
    
    wire res : UInt @[Delay.scala 9:17]
    reg circ : UInt, clock @[Delay.scala 11:20]
    circ <= io.din @[Delay.scala 11:20]
    reg REG : UInt, clock @[Delay.scala 12:17]
    REG <= circ @[Delay.scala 12:17]
    res <= REG @[Delay.scala 12:7]
    io.dout <= res @[Delay.scala 18:11]
    
