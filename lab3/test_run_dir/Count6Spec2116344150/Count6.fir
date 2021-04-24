;buildInfoPackage: chisel3, version: 3.4.1, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Count6 : 
  module Count6 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {dout : UInt<8>}
    
    wire res : UInt @[Count6.scala 8:17]
    reg cntReg : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[Count6.scala 9:23]
    node _T = eq(cntReg, UInt<3>("h06")) @[Count6.scala 10:24]
    node _T_1 = add(cntReg, UInt<1>("h01")) @[Count6.scala 10:44]
    node _T_2 = tail(_T_1, 1) @[Count6.scala 10:44]
    node _T_3 = mux(_T, UInt<1>("h00"), _T_2) @[Count6.scala 10:16]
    cntReg <= _T_3 @[Count6.scala 10:10]
    res <= cntReg @[Count6.scala 12:7]
    io.dout <= res @[Count6.scala 17:11]
    
