;buildInfoPackage: chisel3, version: 3.4.1, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Mux4 : 
  module Mux4 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<1>, flip b : UInt<1>, flip c : UInt<1>, flip d : UInt<1>, flip sel : UInt<2>, y : UInt<1>}
    
    node _T = eq(io.sel, UInt<1>("h00")) @[Mux4.scala 21:18]
    when _T : @[Mux4.scala 21:27]
      io.y <= io.a @[Mux4.scala 22:12]
      skip @[Mux4.scala 21:27]
    else : @[Mux4.scala 23:33]
      node _T_1 = eq(io.sel, UInt<1>("h01")) @[Mux4.scala 23:24]
      when _T_1 : @[Mux4.scala 23:33]
        io.y <= io.b @[Mux4.scala 24:12]
        skip @[Mux4.scala 23:33]
      else : @[Mux4.scala 25:33]
        node _T_2 = eq(io.sel, UInt<2>("h02")) @[Mux4.scala 25:24]
        when _T_2 : @[Mux4.scala 25:33]
          io.y <= io.c @[Mux4.scala 26:12]
          skip @[Mux4.scala 25:33]
        else : @[Mux4.scala 27:17]
          io.y <= io.d @[Mux4.scala 28:12]
          skip @[Mux4.scala 27:17]
    
