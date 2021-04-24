circuit Display :
  module DisplayMultiplexer :
    input clock : Clock
    input reset : UInt<1>
    input io_sum : UInt<8>
    input io_price : UInt<8>
    output io_seg : UInt<7>
    output io_an : UInt<4>

    node sevSeg = UInt<7>("h7f")
    node _T = not(sevSeg) @[DisplayMultiplexer.scala 20:13]
    node select = UInt<4>("h1")
    node _T_1 = not(select) @[DisplayMultiplexer.scala 21:12]
    io_seg <= _T @[DisplayMultiplexer.scala 20:10]
    io_an <= _T_1 @[DisplayMultiplexer.scala 21:9]

  module Display :
    input clock : Clock
    input reset : UInt<1>
    input io_sw : UInt<16>
    output io_seg : UInt<7>
    output io_an : UInt<4>

    inst dispMux of DisplayMultiplexer @[Display.scala 15:23]
    node _T = bits(io_sw, 7, 0) @[Display.scala 18:28]
    node _T_1 = bits(io_sw, 15, 8) @[Display.scala 19:26]
    io_seg <= dispMux.io_seg @[Display.scala 22:10]
    io_an <= dispMux.io_an @[Display.scala 23:9]
    dispMux.clock <= clock
    dispMux.reset <= reset
    dispMux.io_sum <= _T_1 @[Display.scala 19:18]
    dispMux.io_price <= _T @[Display.scala 18:20]