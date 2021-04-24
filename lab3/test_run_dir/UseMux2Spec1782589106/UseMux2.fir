;buildInfoPackage: chisel3, version: 3.4.1, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit UseMux2 : 
  module UseMux2 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip sel : UInt<1>, dout : UInt<1>}
    
    wire res : UInt @[UseMux2.scala 12:17]
    res <= UInt<1>("h00") @[UseMux2.scala 17:7]
    node _T = eq(io.sel, UInt<1>("h01")) @[UseMux2.scala 18:16]
    when _T : @[UseMux2.scala 18:25]
      res <= UInt<1>("h01") @[UseMux2.scala 19:9]
      skip @[UseMux2.scala 18:25]
    res <= UInt<1>("h00") @[UseMux2.scala 23:7]
    io.dout <= res @[UseMux2.scala 27:11]
    
