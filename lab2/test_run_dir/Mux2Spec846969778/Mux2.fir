;buildInfoPackage: chisel3, version: 3.4.1, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Mux2 : 
  module Mux2 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<1>, flip b : UInt<1>, flip sel : UInt<1>, y : UInt<1>}
    
    wire res : UInt<1> @[Mux2.scala 14:17]
    when io.sel : @[Mux2.scala 17:16]
      res <= io.b @[Mux2.scala 18:9]
      skip @[Mux2.scala 17:16]
    else : @[Mux2.scala 19:16]
      res <= io.a @[Mux2.scala 20:9]
      skip @[Mux2.scala 19:16]
    io.y <= res @[Mux2.scala 24:8]
    
