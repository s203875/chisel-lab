module SevenSegDecoder(
  input        clock,
  input        reset,
  input  [3:0] io_sw,
  output [6:0] io_seg,
  output [3:0] io_an
);
  wire  _T = 4'h0 == io_sw; // @[Conditional.scala 37:30]
  wire  _T_1 = 4'h1 == io_sw; // @[Conditional.scala 37:30]
  wire  _T_2 = 4'h2 == io_sw; // @[Conditional.scala 37:30]
  wire  _T_3 = 4'h3 == io_sw; // @[Conditional.scala 37:30]
  wire  _T_4 = 4'h4 == io_sw; // @[Conditional.scala 37:30]
  wire  _T_5 = 4'h5 == io_sw; // @[Conditional.scala 37:30]
  wire  _T_6 = 4'h6 == io_sw; // @[Conditional.scala 37:30]
  wire  _T_7 = 4'h7 == io_sw; // @[Conditional.scala 37:30]
  wire  _T_8 = 4'h8 == io_sw; // @[Conditional.scala 37:30]
  wire  _T_9 = 4'h9 == io_sw; // @[Conditional.scala 37:30]
  wire  _T_10 = 4'ha == io_sw; // @[Conditional.scala 37:30]
  wire  _T_11 = 4'hb == io_sw; // @[Conditional.scala 37:30]
  wire  _T_12 = 4'hc == io_sw; // @[Conditional.scala 37:30]
  wire  _T_13 = 4'hd == io_sw; // @[Conditional.scala 37:30]
  wire  _T_14 = 4'he == io_sw; // @[Conditional.scala 37:30]
  wire  _T_15 = 4'hf == io_sw; // @[Conditional.scala 37:30]
  wire [6:0] _GEN_0 = _T_15 ? 7'h71 : 7'h0; // @[Conditional.scala 39:67 SevenSegDecoder.scala 31:28]
  wire [6:0] _GEN_1 = _T_14 ? 7'h79 : _GEN_0; // @[Conditional.scala 39:67 SevenSegDecoder.scala 30:28]
  wire [6:0] _GEN_2 = _T_13 ? 7'h5e : _GEN_1; // @[Conditional.scala 39:67 SevenSegDecoder.scala 29:28]
  wire [6:0] _GEN_3 = _T_12 ? 7'h39 : _GEN_2; // @[Conditional.scala 39:67 SevenSegDecoder.scala 28:28]
  wire [6:0] _GEN_4 = _T_11 ? 7'h7c : _GEN_3; // @[Conditional.scala 39:67 SevenSegDecoder.scala 27:28]
  wire [6:0] _GEN_5 = _T_10 ? 7'h77 : _GEN_4; // @[Conditional.scala 39:67 SevenSegDecoder.scala 26:28]
  wire [6:0] _GEN_6 = _T_9 ? 7'h6f : _GEN_5; // @[Conditional.scala 39:67 SevenSegDecoder.scala 25:28]
  wire [6:0] _GEN_7 = _T_8 ? 7'h7f : _GEN_6; // @[Conditional.scala 39:67 SevenSegDecoder.scala 24:28]
  wire [6:0] _GEN_8 = _T_7 ? 7'h7 : _GEN_7; // @[Conditional.scala 39:67 SevenSegDecoder.scala 23:28]
  wire [6:0] _GEN_9 = _T_6 ? 7'h7d : _GEN_8; // @[Conditional.scala 39:67 SevenSegDecoder.scala 22:28]
  wire [6:0] _GEN_10 = _T_5 ? 7'h6d : _GEN_9; // @[Conditional.scala 39:67 SevenSegDecoder.scala 21:28]
  wire [6:0] _GEN_11 = _T_4 ? 7'h66 : _GEN_10; // @[Conditional.scala 39:67 SevenSegDecoder.scala 20:28]
  wire [6:0] _GEN_12 = _T_3 ? 7'h4f : _GEN_11; // @[Conditional.scala 39:67 SevenSegDecoder.scala 19:28]
  wire [6:0] _GEN_13 = _T_2 ? 7'h5b : _GEN_12; // @[Conditional.scala 39:67 SevenSegDecoder.scala 18:28]
  wire [6:0] _GEN_14 = _T_1 ? 7'h6 : _GEN_13; // @[Conditional.scala 39:67 SevenSegDecoder.scala 17:28]
  wire [6:0] sevSeg = _T ? 7'h3f : _GEN_14; // @[Conditional.scala 40:58 SevenSegDecoder.scala 16:28]
  assign io_seg = ~sevSeg; // @[SevenSegDecoder.scala 35:13]
  assign io_an = 4'he; // @[SevenSegDecoder.scala 36:9]
endmodule
