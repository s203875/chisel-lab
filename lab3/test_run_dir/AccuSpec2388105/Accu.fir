;buildInfoPackage: chisel3, version: 3.4.1, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Accu : 
  module Accu : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip din : UInt<8>, flip setZero : UInt<1>, dout : UInt<8>}
    
    wire res : UInt @[Accu.scala 10:17]
    reg resetEnableReg : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[Accu.scala 11:32]
    when io.setZero : @[Accu.scala 12:21]
      resetEnableReg <= UInt<1>("h00") @[Accu.scala 13:20]
      skip @[Accu.scala 12:21]
    else : @[Accu.scala 14:16]
      node _T = add(io.din, resetEnableReg) @[Accu.scala 15:29]
      node _T_1 = tail(_T, 1) @[Accu.scala 15:29]
      resetEnableReg <= _T_1 @[Accu.scala 15:20]
      skip @[Accu.scala 14:16]
    res <= resetEnableReg @[Accu.scala 17:7]
    io.dout <= res @[Accu.scala 25:11]
    
