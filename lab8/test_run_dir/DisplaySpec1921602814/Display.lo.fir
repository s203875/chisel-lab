circuit Display :
  module SevenSegDec :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<4>
    output io_out : UInt<7>

    node _T = eq(UInt<1>("h0"), io_in) @[Conditional.scala 37:30]
    node _T_1 = eq(UInt<1>("h1"), io_in) @[Conditional.scala 37:30]
    node _T_2 = eq(UInt<2>("h2"), io_in) @[Conditional.scala 37:30]
    node _T_3 = eq(UInt<2>("h3"), io_in) @[Conditional.scala 37:30]
    node _T_4 = eq(UInt<3>("h4"), io_in) @[Conditional.scala 37:30]
    node _T_5 = eq(UInt<3>("h5"), io_in) @[Conditional.scala 37:30]
    node _T_6 = eq(UInt<3>("h6"), io_in) @[Conditional.scala 37:30]
    node _T_7 = eq(UInt<3>("h7"), io_in) @[Conditional.scala 37:30]
    node _T_8 = eq(UInt<4>("h8"), io_in) @[Conditional.scala 37:30]
    node _T_9 = eq(UInt<4>("h9"), io_in) @[Conditional.scala 37:30]
    node _T_10 = eq(UInt<4>("ha"), io_in) @[Conditional.scala 37:30]
    node _T_11 = eq(UInt<4>("hb"), io_in) @[Conditional.scala 37:30]
    node _T_12 = eq(UInt<4>("hc"), io_in) @[Conditional.scala 37:30]
    node _T_13 = eq(UInt<4>("hd"), io_in) @[Conditional.scala 37:30]
    node _T_14 = eq(UInt<4>("he"), io_in) @[Conditional.scala 37:30]
    node _T_15 = eq(UInt<4>("hf"), io_in) @[Conditional.scala 37:30]
    node _GEN_0 = mux(_T_15, UInt<7>("h71"), UInt<1>("h0")) @[Conditional.scala 39:67 SevenSegDec.scala 30:28]
    node _GEN_1 = mux(_T_14, UInt<7>("h79"), _GEN_0) @[Conditional.scala 39:67 SevenSegDec.scala 29:28]
    node _GEN_2 = mux(_T_13, UInt<7>("h5e"), _GEN_1) @[Conditional.scala 39:67 SevenSegDec.scala 28:28]
    node _GEN_3 = mux(_T_12, UInt<6>("h39"), _GEN_2) @[Conditional.scala 39:67 SevenSegDec.scala 27:28]
    node _GEN_4 = mux(_T_11, UInt<7>("h7c"), _GEN_3) @[Conditional.scala 39:67 SevenSegDec.scala 26:28]
    node _GEN_5 = mux(_T_10, UInt<7>("h77"), _GEN_4) @[Conditional.scala 39:67 SevenSegDec.scala 25:28]
    node _GEN_6 = mux(_T_9, UInt<7>("h6f"), _GEN_5) @[Conditional.scala 39:67 SevenSegDec.scala 24:28]
    node _GEN_7 = mux(_T_8, UInt<7>("h7f"), _GEN_6) @[Conditional.scala 39:67 SevenSegDec.scala 23:28]
    node _GEN_8 = mux(_T_7, UInt<3>("h7"), _GEN_7) @[Conditional.scala 39:67 SevenSegDec.scala 22:28]
    node _GEN_9 = mux(_T_6, UInt<7>("h7d"), _GEN_8) @[Conditional.scala 39:67 SevenSegDec.scala 21:28]
    node _GEN_10 = mux(_T_5, UInt<7>("h6d"), _GEN_9) @[Conditional.scala 39:67 SevenSegDec.scala 20:28]
    node _GEN_11 = mux(_T_4, UInt<7>("h66"), _GEN_10) @[Conditional.scala 39:67 SevenSegDec.scala 19:28]
    node _GEN_12 = mux(_T_3, UInt<7>("h4f"), _GEN_11) @[Conditional.scala 39:67 SevenSegDec.scala 18:28]
    node _GEN_13 = mux(_T_2, UInt<7>("h5b"), _GEN_12) @[Conditional.scala 39:67 SevenSegDec.scala 17:28]
    node _GEN_14 = mux(_T_1, UInt<3>("h6"), _GEN_13) @[Conditional.scala 39:67 SevenSegDec.scala 16:28]
    node _GEN_15 = mux(_T, UInt<6>("h3f"), _GEN_14) @[Conditional.scala 40:58 SevenSegDec.scala 15:28]
    node sevSeg = _GEN_15
    io_out <= sevSeg @[SevenSegDec.scala 34:10]

  module DisplayMultiplexer :
    input clock : Clock
    input reset : UInt<1>
    input io_sum : UInt<8>
    input io_price : UInt<8>
    output io_seg : UInt<7>
    output io_an : UInt<4>

    inst lys1 of SevenSegDec @[DisplayMultiplexer.scala 17:21]
    inst lys2 of SevenSegDec @[DisplayMultiplexer.scala 19:21]
    inst lys3 of SevenSegDec @[DisplayMultiplexer.scala 21:21]
    inst lys4 of SevenSegDec @[DisplayMultiplexer.scala 23:21]
    node _T = bits(io_sum, 7, 4) @[DisplayMultiplexer.scala 18:23]
    node _T_1 = bits(io_sum, 3, 0) @[DisplayMultiplexer.scala 20:23]
    node _T_2 = bits(io_price, 7, 4) @[DisplayMultiplexer.scala 22:25]
    node _T_3 = bits(io_price, 3, 0) @[DisplayMultiplexer.scala 24:25]
    reg tickCounterReg : UInt<32>, clock with :
      reset => (UInt<1>("h0"), tickCounterReg) @[DisplayMultiplexer.scala 26:31]
    node tick = eq(tickCounterReg, UInt<5>("h13")) @[DisplayMultiplexer.scala 27:29]
    node _T_4 = add(tickCounterReg, UInt<1>("h1")) @[DisplayMultiplexer.scala 29:35]
    node _T_5 = tail(_T_4, 1) @[DisplayMultiplexer.scala 29:35]
    node _GEN_0 = mux(tick, UInt<1>("h0"), _T_5) @[DisplayMultiplexer.scala 30:15 DisplayMultiplexer.scala 31:20 DisplayMultiplexer.scala 29:18]
    reg lowFrequCntReg : UInt<2>, clock with :
      reset => (UInt<1>("h0"), lowFrequCntReg) @[DisplayMultiplexer.scala 34:31]
    node _T_6 = add(lowFrequCntReg, UInt<1>("h1")) @[DisplayMultiplexer.scala 36:37]
    node _T_7 = tail(_T_6, 1) @[DisplayMultiplexer.scala 36:37]
    node _GEN_1 = mux(tick, _T_7, lowFrequCntReg) @[DisplayMultiplexer.scala 35:15 DisplayMultiplexer.scala 36:20 DisplayMultiplexer.scala 34:31]
    node _T_8 = eq(lowFrequCntReg, UInt<1>("h0")) @[DisplayMultiplexer.scala 39:24]
    node _GEN_2 = mux(_T_8, lys1.io_out, UInt<7>("h7f")) @[DisplayMultiplexer.scala 39:37 DisplayMultiplexer.scala 40:12]
    node _GEN_3 = mux(_T_8, UInt<3>("h7"), UInt<4>("h1")) @[DisplayMultiplexer.scala 39:37 DisplayMultiplexer.scala 41:12]
    node _T_9 = eq(lowFrequCntReg, UInt<1>("h1")) @[DisplayMultiplexer.scala 43:24]
    node _GEN_4 = mux(_T_9, lys2.io_out, _GEN_2) @[DisplayMultiplexer.scala 43:36 DisplayMultiplexer.scala 44:12]
    node _GEN_5 = mux(_T_9, UInt<4>("hb"), _GEN_3) @[DisplayMultiplexer.scala 43:36 DisplayMultiplexer.scala 45:12]
    node _T_10 = eq(lowFrequCntReg, UInt<2>("h2")) @[DisplayMultiplexer.scala 48:24]
    node _GEN_6 = mux(_T_10, lys3.io_out, _GEN_4) @[DisplayMultiplexer.scala 48:37 DisplayMultiplexer.scala 49:12]
    node _GEN_7 = mux(_T_10, UInt<4>("hd"), _GEN_5) @[DisplayMultiplexer.scala 48:37 DisplayMultiplexer.scala 50:12]
    node _T_11 = eq(lowFrequCntReg, UInt<2>("h3")) @[DisplayMultiplexer.scala 53:24]
    node _GEN_8 = mux(_T_11, lys4.io_out, _GEN_6) @[DisplayMultiplexer.scala 53:37 DisplayMultiplexer.scala 54:12]
    node _GEN_9 = mux(_T_11, UInt<4>("he"), _GEN_7) @[DisplayMultiplexer.scala 53:37 DisplayMultiplexer.scala 55:12]
    node sevSeg = _GEN_8
    node _T_12 = not(sevSeg) @[DisplayMultiplexer.scala 60:13]
    node select = _GEN_9
    node _T_13 = not(select) @[DisplayMultiplexer.scala 61:12]
    io_seg <= _T_12 @[DisplayMultiplexer.scala 60:10]
    io_an <= _T_13 @[DisplayMultiplexer.scala 61:9]
    lys1.clock <= clock
    lys1.reset <= reset
    lys1.io_in <= _T @[DisplayMultiplexer.scala 18:14]
    lys2.clock <= clock
    lys2.reset <= reset
    lys2.io_in <= _T_1 @[DisplayMultiplexer.scala 20:14]
    lys3.clock <= clock
    lys3.reset <= reset
    lys3.io_in <= _T_2 @[DisplayMultiplexer.scala 22:14]
    lys4.clock <= clock
    lys4.reset <= reset
    lys4.io_in <= _T_3 @[DisplayMultiplexer.scala 24:14]
    tickCounterReg <= mux(reset, UInt<32>("h0"), _GEN_0) @[DisplayMultiplexer.scala 26:31 DisplayMultiplexer.scala 26:31]
    lowFrequCntReg <= mux(reset, UInt<2>("h0"), _GEN_1) @[DisplayMultiplexer.scala 34:31 DisplayMultiplexer.scala 34:31]

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