;buildInfoPackage: chisel3, version: 3.4.1, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit AddSub : 
  module AddSub : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip a : UInt<4>, flip b : UInt<4>, flip selAdd : UInt<1>, y : UInt<4>}
    
    wire res : UInt<4>
    res <= UInt<4>("h00")
    node _T = add(io.a, io.b) @[AddSub.scala 18:24]
    node _T_1 = tail(_T, 1) @[AddSub.scala 18:24]
    node _T_2 = sub(io.a, io.b) @[AddSub.scala 18:29]
    node _T_3 = tail(_T_2, 1) @[AddSub.scala 18:29]
    node _T_4 = mux(io.selAdd, _T_1, _T_3) @[AddSub.scala 18:14]
    res <= _T_4 @[AddSub.scala 18:8]
    io.y <= res @[AddSub.scala 22:8]
    
