circuit CountSevenSeg :
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
    node _GEN_0 = mux(_T_15, UInt<7>("h71"), UInt<1>("h0")) @[Conditional.scala 39:67 SevenSegDec.scala 32:28]
    node _GEN_1 = mux(_T_14, UInt<7>("h79"), _GEN_0) @[Conditional.scala 39:67 SevenSegDec.scala 31:28]
    node _GEN_2 = mux(_T_13, UInt<7>("h5e"), _GEN_1) @[Conditional.scala 39:67 SevenSegDec.scala 30:28]
    node _GEN_3 = mux(_T_12, UInt<6>("h39"), _GEN_2) @[Conditional.scala 39:67 SevenSegDec.scala 29:28]
    node _GEN_4 = mux(_T_11, UInt<7>("h7c"), _GEN_3) @[Conditional.scala 39:67 SevenSegDec.scala 28:28]
    node _GEN_5 = mux(_T_10, UInt<7>("h77"), _GEN_4) @[Conditional.scala 39:67 SevenSegDec.scala 27:28]
    node _GEN_6 = mux(_T_9, UInt<7>("h6f"), _GEN_5) @[Conditional.scala 39:67 SevenSegDec.scala 26:28]
    node _GEN_7 = mux(_T_8, UInt<7>("h7f"), _GEN_6) @[Conditional.scala 39:67 SevenSegDec.scala 25:28]
    node _GEN_8 = mux(_T_7, UInt<3>("h7"), _GEN_7) @[Conditional.scala 39:67 SevenSegDec.scala 24:28]
    node _GEN_9 = mux(_T_6, UInt<7>("h7d"), _GEN_8) @[Conditional.scala 39:67 SevenSegDec.scala 23:28]
    node _GEN_10 = mux(_T_5, UInt<7>("h6d"), _GEN_9) @[Conditional.scala 39:67 SevenSegDec.scala 22:28]
    node _GEN_11 = mux(_T_4, UInt<7>("h66"), _GEN_10) @[Conditional.scala 39:67 SevenSegDec.scala 21:28]
    node _GEN_12 = mux(_T_3, UInt<7>("h4f"), _GEN_11) @[Conditional.scala 39:67 SevenSegDec.scala 20:28]
    node _GEN_13 = mux(_T_2, UInt<7>("h5b"), _GEN_12) @[Conditional.scala 39:67 SevenSegDec.scala 19:28]
    node _GEN_14 = mux(_T_1, UInt<3>("h6"), _GEN_13) @[Conditional.scala 39:67 SevenSegDec.scala 18:28]
    node _GEN_15 = mux(_T, UInt<6>("h3f"), _GEN_14) @[Conditional.scala 40:58 SevenSegDec.scala 17:28]
    node sevSeg = _GEN_15
    io_out <= sevSeg @[SevenSegDec.scala 35:10]

  module CountSevenSeg :
    input clock : Clock
    input reset : UInt<1>
    output io_seg : UInt<7>
    output io_an : UInt<4>

    inst dec of SevenSegDec @[CountSevenSeg.scala 25:20]
    reg tickCounterReg : UInt<32>, clock with :
      reset => (UInt<1>("h0"), tickCounterReg) @[CountSevenSeg.scala 12:31]
    node tick = eq(tickCounterReg, UInt<26>("h2faf07f")) @[CountSevenSeg.scala 13:29]
    node _T = add(tickCounterReg, UInt<1>("h1")) @[CountSevenSeg.scala 15:35]
    node _T_1 = tail(_T, 1) @[CountSevenSeg.scala 15:35]
    node _GEN_0 = mux(tick, UInt<1>("h0"), _T_1) @[CountSevenSeg.scala 16:15 CountSevenSeg.scala 17:20 CountSevenSeg.scala 15:18]
    reg lowFrequCntReg : UInt<4>, clock with :
      reset => (UInt<1>("h0"), lowFrequCntReg) @[CountSevenSeg.scala 20:31]
    node _T_2 = add(lowFrequCntReg, UInt<1>("h1")) @[CountSevenSeg.scala 22:37]
    node _T_3 = tail(_T_2, 1) @[CountSevenSeg.scala 22:37]
    node _GEN_1 = mux(tick, _T_3, lowFrequCntReg) @[CountSevenSeg.scala 21:15 CountSevenSeg.scala 22:20 CountSevenSeg.scala 20:31]
    io_seg <= dec.io_out @[CountSevenSeg.scala 29:10]
    io_an <= UInt<4>("he") @[CountSevenSeg.scala 30:9]
    tickCounterReg <= mux(reset, UInt<32>("h0"), _GEN_0) @[CountSevenSeg.scala 12:31 CountSevenSeg.scala 12:31]
    lowFrequCntReg <= mux(reset, UInt<4>("h0"), _GEN_1) @[CountSevenSeg.scala 20:31 CountSevenSeg.scala 20:31]
    dec.clock <= clock
    dec.reset <= reset
    dec.io_in <= lowFrequCntReg @[CountSevenSeg.scala 26:12]