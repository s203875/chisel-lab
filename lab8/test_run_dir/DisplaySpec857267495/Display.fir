;buildInfoPackage: chisel3, version: 3.4.1, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Display : 
  module DisplayMultiplexer : 
    input clock : Clock
    input reset : Reset
    output io : {flip sum : UInt<8>, flip price : UInt<8>, seg : UInt<7>, an : UInt<4>}
    
    wire sevSeg : UInt<7>
    sevSeg <= UInt<7>("h07f")
    wire select : UInt<4>
    select <= UInt<4>("h01")
    node _T = not(sevSeg) @[DisplayMultiplexer.scala 20:13]
    io.seg <= _T @[DisplayMultiplexer.scala 20:10]
    node _T_1 = not(select) @[DisplayMultiplexer.scala 21:12]
    io.an <= _T_1 @[DisplayMultiplexer.scala 21:9]
    
  module Display : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip sw : UInt<16>, seg : UInt<7>, an : UInt<4>}
    
    inst dispMux of DisplayMultiplexer @[Display.scala 15:23]
    dispMux.clock <= clock
    dispMux.reset <= reset
    node _T = bits(io.sw, 7, 0) @[Display.scala 18:28]
    dispMux.io.price <= _T @[Display.scala 18:20]
    node _T_1 = bits(io.sw, 15, 8) @[Display.scala 19:26]
    dispMux.io.sum <= _T_1 @[Display.scala 19:18]
    io.seg <= dispMux.io.seg @[Display.scala 22:10]
    io.an <= dispMux.io.an @[Display.scala 23:9]
    
