circuit SevenSegDecoder :
  module SevenSegDecoder :
    input clock : Clock
    input reset : UInt<1>
    input io_sw : UInt<4>
    output io_seg : UInt<7>
    output io_an : UInt<4>

    node _T = eq(UInt<1>("h0"), io_sw) @[Conditional.scala 37:30]
    node _T_1 = eq(UInt<1>("h1"), io_sw) @[Conditional.scala 37:30]
    node _T_2 = eq(UInt<2>("h2"), io_sw) @[Conditional.scala 37:30]
    node _T_3 = eq(UInt<2>("h3"), io_sw) @[Conditional.scala 37:30]
    node _T_4 = eq(UInt<3>("h4"), io_sw) @[Conditional.scala 37:30]
    node _T_5 = eq(UInt<3>("h5"), io_sw) @[Conditional.scala 37:30]
    node _T_6 = eq(UInt<3>("h6"), io_sw) @[Conditional.scala 37:30]
    node _T_7 = eq(UInt<3>("h7"), io_sw) @[Conditional.scala 37:30]
    node _T_8 = eq(UInt<4>("h8"), io_sw) @[Conditional.scala 37:30]
    node _T_9 = eq(UInt<4>("h9"), io_sw) @[Conditional.scala 37:30]
    node _GEN_0 = mux(_T_9, UInt<7>("h7b"), UInt<1>("h0")) @[Conditional.scala 39:67 SevenSegDecoder.scala 25:28]
    node _GEN_1 = mux(_T_8, UInt<7>("h7f"), _GEN_0) @[Conditional.scala 39:67 SevenSegDecoder.scala 24:28]
    node _GEN_2 = mux(_T_7, UInt<7>("h70"), _GEN_1) @[Conditional.scala 39:67 SevenSegDecoder.scala 23:28]
    node _GEN_3 = mux(_T_6, UInt<7>("h5f"), _GEN_2) @[Conditional.scala 39:67 SevenSegDecoder.scala 22:28]
    node _GEN_4 = mux(_T_5, UInt<7>("h5b"), _GEN_3) @[Conditional.scala 39:67 SevenSegDecoder.scala 21:28]
    node _GEN_5 = mux(_T_4, UInt<6>("h33"), _GEN_4) @[Conditional.scala 39:67 SevenSegDecoder.scala 20:28]
    node _GEN_6 = mux(_T_3, UInt<7>("h79"), _GEN_5) @[Conditional.scala 39:67 SevenSegDecoder.scala 19:28]
    node _GEN_7 = mux(_T_2, UInt<7>("h6d"), _GEN_6) @[Conditional.scala 39:67 SevenSegDecoder.scala 18:28]
    node _GEN_8 = mux(_T_1, UInt<6>("h30"), _GEN_7) @[Conditional.scala 39:67 SevenSegDecoder.scala 17:28]
    node _GEN_9 = mux(_T, UInt<7>("h7e"), _GEN_8) @[Conditional.scala 40:58 SevenSegDecoder.scala 16:28]
    node sevSeg = _GEN_9
    node _T_10 = not(sevSeg) @[SevenSegDecoder.scala 29:13]
    io_seg <= _T_10 @[SevenSegDecoder.scala 29:10]
    io_an <= UInt<4>("he") @[SevenSegDecoder.scala 30:9]