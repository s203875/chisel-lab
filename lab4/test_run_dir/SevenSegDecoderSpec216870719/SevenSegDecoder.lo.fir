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
    node _T_10 = eq(UInt<4>("ha"), io_sw) @[Conditional.scala 37:30]
    node _T_11 = eq(UInt<4>("hb"), io_sw) @[Conditional.scala 37:30]
    node _T_12 = eq(UInt<4>("hc"), io_sw) @[Conditional.scala 37:30]
    node _T_13 = eq(UInt<4>("hd"), io_sw) @[Conditional.scala 37:30]
    node _T_14 = eq(UInt<4>("he"), io_sw) @[Conditional.scala 37:30]
    node _T_15 = eq(UInt<4>("hf"), io_sw) @[Conditional.scala 37:30]
    node _GEN_0 = mux(_T_15, UInt<7>("h71"), UInt<1>("h0")) @[Conditional.scala 39:67 SevenSegDecoder.scala 31:28]
    node _GEN_1 = mux(_T_14, UInt<7>("h79"), _GEN_0) @[Conditional.scala 39:67 SevenSegDecoder.scala 30:28]
    node _GEN_2 = mux(_T_13, UInt<7>("h5e"), _GEN_1) @[Conditional.scala 39:67 SevenSegDecoder.scala 29:28]
    node _GEN_3 = mux(_T_12, UInt<6>("h39"), _GEN_2) @[Conditional.scala 39:67 SevenSegDecoder.scala 28:28]
    node _GEN_4 = mux(_T_11, UInt<7>("h7c"), _GEN_3) @[Conditional.scala 39:67 SevenSegDecoder.scala 27:28]
    node _GEN_5 = mux(_T_10, UInt<7>("h77"), _GEN_4) @[Conditional.scala 39:67 SevenSegDecoder.scala 26:28]
    node _GEN_6 = mux(_T_9, UInt<7>("h6f"), _GEN_5) @[Conditional.scala 39:67 SevenSegDecoder.scala 25:28]
    node _GEN_7 = mux(_T_8, UInt<7>("h7f"), _GEN_6) @[Conditional.scala 39:67 SevenSegDecoder.scala 24:28]
    node _GEN_8 = mux(_T_7, UInt<3>("h7"), _GEN_7) @[Conditional.scala 39:67 SevenSegDecoder.scala 23:28]
    node _GEN_9 = mux(_T_6, UInt<7>("h7d"), _GEN_8) @[Conditional.scala 39:67 SevenSegDecoder.scala 22:28]
    node _GEN_10 = mux(_T_5, UInt<7>("h6d"), _GEN_9) @[Conditional.scala 39:67 SevenSegDecoder.scala 21:28]
    node _GEN_11 = mux(_T_4, UInt<7>("h66"), _GEN_10) @[Conditional.scala 39:67 SevenSegDecoder.scala 20:28]
    node _GEN_12 = mux(_T_3, UInt<7>("h4f"), _GEN_11) @[Conditional.scala 39:67 SevenSegDecoder.scala 19:28]
    node _GEN_13 = mux(_T_2, UInt<7>("h5b"), _GEN_12) @[Conditional.scala 39:67 SevenSegDecoder.scala 18:28]
    node _GEN_14 = mux(_T_1, UInt<3>("h6"), _GEN_13) @[Conditional.scala 39:67 SevenSegDecoder.scala 17:28]
    node _GEN_15 = mux(_T, UInt<6>("h3f"), _GEN_14) @[Conditional.scala 40:58 SevenSegDecoder.scala 16:28]
    node sevSeg = _GEN_15
    node _T_16 = not(sevSeg) @[SevenSegDecoder.scala 35:13]
    io_seg <= _T_16 @[SevenSegDecoder.scala 35:10]
    io_an <= UInt<4>("he") @[SevenSegDecoder.scala 36:9]