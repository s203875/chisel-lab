;buildInfoPackage: chisel3, version: 3.4.1, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Count15 : 
  module Count15 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {dout : UInt<8>}
    
    wire res : UInt @[Count15.scala 8:17]
    reg cntReg : UInt<4>, clock with : (reset => (reset, UInt<4>("h00"))) @[Count15.scala 9:23]
    node _T = add(cntReg, UInt<1>("h01")) @[Count15.scala 11:19]
    node _T_1 = tail(_T, 1) @[Count15.scala 11:19]
    cntReg <= _T_1 @[Count15.scala 11:10]
    res <= cntReg @[Count15.scala 13:7]
    io.dout <= res @[Count15.scala 16:11]
    
