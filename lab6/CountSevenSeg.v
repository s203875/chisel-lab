module SevenSegDec(
  input  [3:0] io_in,
  output [6:0] io_out
);
  wire  _T = 4'h0 == io_in; // @[Conditional.scala 37:30]
  wire  _T_1 = 4'h1 == io_in; // @[Conditional.scala 37:30]
  wire  _T_2 = 4'h2 == io_in; // @[Conditional.scala 37:30]
  wire  _T_3 = 4'h3 == io_in; // @[Conditional.scala 37:30]
  wire  _T_4 = 4'h4 == io_in; // @[Conditional.scala 37:30]
  wire  _T_5 = 4'h5 == io_in; // @[Conditional.scala 37:30]
  wire  _T_6 = 4'h6 == io_in; // @[Conditional.scala 37:30]
  wire  _T_7 = 4'h7 == io_in; // @[Conditional.scala 37:30]
  wire  _T_8 = 4'h8 == io_in; // @[Conditional.scala 37:30]
  wire  _T_9 = 4'h9 == io_in; // @[Conditional.scala 37:30]
  wire  _T_10 = 4'ha == io_in; // @[Conditional.scala 37:30]
  wire  _T_11 = 4'hb == io_in; // @[Conditional.scala 37:30]
  wire  _T_12 = 4'hc == io_in; // @[Conditional.scala 37:30]
  wire  _T_13 = 4'hd == io_in; // @[Conditional.scala 37:30]
  wire  _T_14 = 4'he == io_in; // @[Conditional.scala 37:30]
  wire  _T_15 = 4'hf == io_in; // @[Conditional.scala 37:30]
  wire [6:0] _GEN_0 = _T_15 ? 7'h71 : 7'h0; // @[Conditional.scala 39:67 SevenSegDec.scala 32:28]
  wire [6:0] _GEN_1 = _T_14 ? 7'h79 : _GEN_0; // @[Conditional.scala 39:67 SevenSegDec.scala 31:28]
  wire [6:0] _GEN_2 = _T_13 ? 7'h5e : _GEN_1; // @[Conditional.scala 39:67 SevenSegDec.scala 30:28]
  wire [6:0] _GEN_3 = _T_12 ? 7'h39 : _GEN_2; // @[Conditional.scala 39:67 SevenSegDec.scala 29:28]
  wire [6:0] _GEN_4 = _T_11 ? 7'h7c : _GEN_3; // @[Conditional.scala 39:67 SevenSegDec.scala 28:28]
  wire [6:0] _GEN_5 = _T_10 ? 7'h77 : _GEN_4; // @[Conditional.scala 39:67 SevenSegDec.scala 27:28]
  wire [6:0] _GEN_6 = _T_9 ? 7'h6f : _GEN_5; // @[Conditional.scala 39:67 SevenSegDec.scala 26:28]
  wire [6:0] _GEN_7 = _T_8 ? 7'h7f : _GEN_6; // @[Conditional.scala 39:67 SevenSegDec.scala 25:28]
  wire [6:0] _GEN_8 = _T_7 ? 7'h7 : _GEN_7; // @[Conditional.scala 39:67 SevenSegDec.scala 24:28]
  wire [6:0] _GEN_9 = _T_6 ? 7'h7d : _GEN_8; // @[Conditional.scala 39:67 SevenSegDec.scala 23:28]
  wire [6:0] _GEN_10 = _T_5 ? 7'h6d : _GEN_9; // @[Conditional.scala 39:67 SevenSegDec.scala 22:28]
  wire [6:0] _GEN_11 = _T_4 ? 7'h66 : _GEN_10; // @[Conditional.scala 39:67 SevenSegDec.scala 21:28]
  wire [6:0] _GEN_12 = _T_3 ? 7'h4f : _GEN_11; // @[Conditional.scala 39:67 SevenSegDec.scala 20:28]
  wire [6:0] _GEN_13 = _T_2 ? 7'h5b : _GEN_12; // @[Conditional.scala 39:67 SevenSegDec.scala 19:28]
  wire [6:0] _GEN_14 = _T_1 ? 7'h6 : _GEN_13; // @[Conditional.scala 39:67 SevenSegDec.scala 18:28]
  wire [6:0] sevSeg = _T ? 7'h3f : _GEN_14; // @[Conditional.scala 40:58 SevenSegDec.scala 17:28]
  assign io_out = ~sevSeg; // @[SevenSegDec.scala 35:13]
endmodule
module CountSevenSeg(
  input        clock,
  input        reset,
  output [6:0] io_seg,
  output [3:0] io_an
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [3:0] dec_io_in; // @[CountSevenSeg.scala 25:20]
  wire [6:0] dec_io_out; // @[CountSevenSeg.scala 25:20]
  reg [31:0] tickCounterReg; // @[CountSevenSeg.scala 12:31]
  wire  tick = tickCounterReg == 32'h2faf07f; // @[CountSevenSeg.scala 13:29]
  wire [31:0] _T_1 = tickCounterReg + 32'h1; // @[CountSevenSeg.scala 15:35]
  reg [3:0] lowFrequCntReg; // @[CountSevenSeg.scala 20:31]
  wire [3:0] _T_3 = lowFrequCntReg + 4'h1; // @[CountSevenSeg.scala 22:37]
  SevenSegDec dec ( // @[CountSevenSeg.scala 25:20]
    .io_in(dec_io_in),
    .io_out(dec_io_out)
  );
  assign io_seg = dec_io_out; // @[CountSevenSeg.scala 29:10]
  assign io_an = 4'he; // @[CountSevenSeg.scala 30:9]
  assign dec_io_in = lowFrequCntReg; // @[CountSevenSeg.scala 26:12]
  always @(posedge clock) begin
    if (reset) begin // @[CountSevenSeg.scala 12:31]
      tickCounterReg <= 32'h0; // @[CountSevenSeg.scala 12:31]
    end else if (tick) begin // @[CountSevenSeg.scala 16:15]
      tickCounterReg <= 32'h0; // @[CountSevenSeg.scala 17:20]
    end else begin
      tickCounterReg <= _T_1; // @[CountSevenSeg.scala 15:18]
    end
    if (reset) begin // @[CountSevenSeg.scala 20:31]
      lowFrequCntReg <= 4'h0; // @[CountSevenSeg.scala 20:31]
    end else if (tick) begin // @[CountSevenSeg.scala 21:15]
      lowFrequCntReg <= _T_3; // @[CountSevenSeg.scala 22:20]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  tickCounterReg = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  lowFrequCntReg = _RAND_1[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
