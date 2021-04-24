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
  wire [6:0] _GEN_0 = _T_15 ? 7'h71 : 7'h0; // @[Conditional.scala 39:67 SevenSegDec.scala 30:28]
  wire [6:0] _GEN_1 = _T_14 ? 7'h79 : _GEN_0; // @[Conditional.scala 39:67 SevenSegDec.scala 29:28]
  wire [6:0] _GEN_2 = _T_13 ? 7'h5e : _GEN_1; // @[Conditional.scala 39:67 SevenSegDec.scala 28:28]
  wire [6:0] _GEN_3 = _T_12 ? 7'h39 : _GEN_2; // @[Conditional.scala 39:67 SevenSegDec.scala 27:28]
  wire [6:0] _GEN_4 = _T_11 ? 7'h7c : _GEN_3; // @[Conditional.scala 39:67 SevenSegDec.scala 26:28]
  wire [6:0] _GEN_5 = _T_10 ? 7'h77 : _GEN_4; // @[Conditional.scala 39:67 SevenSegDec.scala 25:28]
  wire [6:0] _GEN_6 = _T_9 ? 7'h6f : _GEN_5; // @[Conditional.scala 39:67 SevenSegDec.scala 24:28]
  wire [6:0] _GEN_7 = _T_8 ? 7'h7f : _GEN_6; // @[Conditional.scala 39:67 SevenSegDec.scala 23:28]
  wire [6:0] _GEN_8 = _T_7 ? 7'h7 : _GEN_7; // @[Conditional.scala 39:67 SevenSegDec.scala 22:28]
  wire [6:0] _GEN_9 = _T_6 ? 7'h7d : _GEN_8; // @[Conditional.scala 39:67 SevenSegDec.scala 21:28]
  wire [6:0] _GEN_10 = _T_5 ? 7'h6d : _GEN_9; // @[Conditional.scala 39:67 SevenSegDec.scala 20:28]
  wire [6:0] _GEN_11 = _T_4 ? 7'h66 : _GEN_10; // @[Conditional.scala 39:67 SevenSegDec.scala 19:28]
  wire [6:0] _GEN_12 = _T_3 ? 7'h4f : _GEN_11; // @[Conditional.scala 39:67 SevenSegDec.scala 18:28]
  wire [6:0] _GEN_13 = _T_2 ? 7'h5b : _GEN_12; // @[Conditional.scala 39:67 SevenSegDec.scala 17:28]
  wire [6:0] _GEN_14 = _T_1 ? 7'h6 : _GEN_13; // @[Conditional.scala 39:67 SevenSegDec.scala 16:28]
  assign io_out = _T ? 7'h3f : _GEN_14; // @[Conditional.scala 40:58 SevenSegDec.scala 15:28]
endmodule
module BcdTable(
  input  [7:0] io_adress,
  output [7:0] io_data
);
  wire [7:0] _GEN_1 = 7'h1 == io_adress[6:0] ? 8'h1 : 8'h0; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_2 = 7'h2 == io_adress[6:0] ? 8'h2 : _GEN_1; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_3 = 7'h3 == io_adress[6:0] ? 8'h3 : _GEN_2; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_4 = 7'h4 == io_adress[6:0] ? 8'h4 : _GEN_3; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_5 = 7'h5 == io_adress[6:0] ? 8'h5 : _GEN_4; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_6 = 7'h6 == io_adress[6:0] ? 8'h6 : _GEN_5; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_7 = 7'h7 == io_adress[6:0] ? 8'h7 : _GEN_6; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_8 = 7'h8 == io_adress[6:0] ? 8'h8 : _GEN_7; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_9 = 7'h9 == io_adress[6:0] ? 8'h9 : _GEN_8; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_10 = 7'ha == io_adress[6:0] ? 8'h10 : _GEN_9; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_11 = 7'hb == io_adress[6:0] ? 8'h11 : _GEN_10; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_12 = 7'hc == io_adress[6:0] ? 8'h12 : _GEN_11; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_13 = 7'hd == io_adress[6:0] ? 8'h13 : _GEN_12; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_14 = 7'he == io_adress[6:0] ? 8'h14 : _GEN_13; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_15 = 7'hf == io_adress[6:0] ? 8'h15 : _GEN_14; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_16 = 7'h10 == io_adress[6:0] ? 8'h16 : _GEN_15; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_17 = 7'h11 == io_adress[6:0] ? 8'h17 : _GEN_16; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_18 = 7'h12 == io_adress[6:0] ? 8'h18 : _GEN_17; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_19 = 7'h13 == io_adress[6:0] ? 8'h19 : _GEN_18; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_20 = 7'h14 == io_adress[6:0] ? 8'h20 : _GEN_19; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_21 = 7'h15 == io_adress[6:0] ? 8'h21 : _GEN_20; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_22 = 7'h16 == io_adress[6:0] ? 8'h22 : _GEN_21; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_23 = 7'h17 == io_adress[6:0] ? 8'h23 : _GEN_22; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_24 = 7'h18 == io_adress[6:0] ? 8'h24 : _GEN_23; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_25 = 7'h19 == io_adress[6:0] ? 8'h25 : _GEN_24; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_26 = 7'h1a == io_adress[6:0] ? 8'h26 : _GEN_25; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_27 = 7'h1b == io_adress[6:0] ? 8'h27 : _GEN_26; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_28 = 7'h1c == io_adress[6:0] ? 8'h28 : _GEN_27; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_29 = 7'h1d == io_adress[6:0] ? 8'h29 : _GEN_28; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_30 = 7'h1e == io_adress[6:0] ? 8'h30 : _GEN_29; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_31 = 7'h1f == io_adress[6:0] ? 8'h31 : _GEN_30; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_32 = 7'h20 == io_adress[6:0] ? 8'h32 : _GEN_31; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_33 = 7'h21 == io_adress[6:0] ? 8'h33 : _GEN_32; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_34 = 7'h22 == io_adress[6:0] ? 8'h34 : _GEN_33; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_35 = 7'h23 == io_adress[6:0] ? 8'h35 : _GEN_34; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_36 = 7'h24 == io_adress[6:0] ? 8'h36 : _GEN_35; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_37 = 7'h25 == io_adress[6:0] ? 8'h37 : _GEN_36; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_38 = 7'h26 == io_adress[6:0] ? 8'h38 : _GEN_37; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_39 = 7'h27 == io_adress[6:0] ? 8'h39 : _GEN_38; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_40 = 7'h28 == io_adress[6:0] ? 8'h40 : _GEN_39; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_41 = 7'h29 == io_adress[6:0] ? 8'h41 : _GEN_40; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_42 = 7'h2a == io_adress[6:0] ? 8'h42 : _GEN_41; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_43 = 7'h2b == io_adress[6:0] ? 8'h43 : _GEN_42; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_44 = 7'h2c == io_adress[6:0] ? 8'h44 : _GEN_43; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_45 = 7'h2d == io_adress[6:0] ? 8'h45 : _GEN_44; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_46 = 7'h2e == io_adress[6:0] ? 8'h46 : _GEN_45; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_47 = 7'h2f == io_adress[6:0] ? 8'h47 : _GEN_46; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_48 = 7'h30 == io_adress[6:0] ? 8'h48 : _GEN_47; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_49 = 7'h31 == io_adress[6:0] ? 8'h49 : _GEN_48; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_50 = 7'h32 == io_adress[6:0] ? 8'h50 : _GEN_49; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_51 = 7'h33 == io_adress[6:0] ? 8'h51 : _GEN_50; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_52 = 7'h34 == io_adress[6:0] ? 8'h52 : _GEN_51; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_53 = 7'h35 == io_adress[6:0] ? 8'h53 : _GEN_52; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_54 = 7'h36 == io_adress[6:0] ? 8'h54 : _GEN_53; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_55 = 7'h37 == io_adress[6:0] ? 8'h55 : _GEN_54; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_56 = 7'h38 == io_adress[6:0] ? 8'h56 : _GEN_55; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_57 = 7'h39 == io_adress[6:0] ? 8'h57 : _GEN_56; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_58 = 7'h3a == io_adress[6:0] ? 8'h58 : _GEN_57; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_59 = 7'h3b == io_adress[6:0] ? 8'h59 : _GEN_58; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_60 = 7'h3c == io_adress[6:0] ? 8'h60 : _GEN_59; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_61 = 7'h3d == io_adress[6:0] ? 8'h61 : _GEN_60; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_62 = 7'h3e == io_adress[6:0] ? 8'h62 : _GEN_61; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_63 = 7'h3f == io_adress[6:0] ? 8'h63 : _GEN_62; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_64 = 7'h40 == io_adress[6:0] ? 8'h64 : _GEN_63; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_65 = 7'h41 == io_adress[6:0] ? 8'h65 : _GEN_64; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_66 = 7'h42 == io_adress[6:0] ? 8'h66 : _GEN_65; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_67 = 7'h43 == io_adress[6:0] ? 8'h67 : _GEN_66; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_68 = 7'h44 == io_adress[6:0] ? 8'h68 : _GEN_67; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_69 = 7'h45 == io_adress[6:0] ? 8'h69 : _GEN_68; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_70 = 7'h46 == io_adress[6:0] ? 8'h70 : _GEN_69; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_71 = 7'h47 == io_adress[6:0] ? 8'h71 : _GEN_70; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_72 = 7'h48 == io_adress[6:0] ? 8'h72 : _GEN_71; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_73 = 7'h49 == io_adress[6:0] ? 8'h73 : _GEN_72; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_74 = 7'h4a == io_adress[6:0] ? 8'h74 : _GEN_73; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_75 = 7'h4b == io_adress[6:0] ? 8'h75 : _GEN_74; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_76 = 7'h4c == io_adress[6:0] ? 8'h76 : _GEN_75; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_77 = 7'h4d == io_adress[6:0] ? 8'h77 : _GEN_76; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_78 = 7'h4e == io_adress[6:0] ? 8'h78 : _GEN_77; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_79 = 7'h4f == io_adress[6:0] ? 8'h79 : _GEN_78; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_80 = 7'h50 == io_adress[6:0] ? 8'h80 : _GEN_79; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_81 = 7'h51 == io_adress[6:0] ? 8'h81 : _GEN_80; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_82 = 7'h52 == io_adress[6:0] ? 8'h82 : _GEN_81; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_83 = 7'h53 == io_adress[6:0] ? 8'h83 : _GEN_82; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_84 = 7'h54 == io_adress[6:0] ? 8'h84 : _GEN_83; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_85 = 7'h55 == io_adress[6:0] ? 8'h85 : _GEN_84; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_86 = 7'h56 == io_adress[6:0] ? 8'h86 : _GEN_85; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_87 = 7'h57 == io_adress[6:0] ? 8'h87 : _GEN_86; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_88 = 7'h58 == io_adress[6:0] ? 8'h88 : _GEN_87; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_89 = 7'h59 == io_adress[6:0] ? 8'h89 : _GEN_88; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_90 = 7'h5a == io_adress[6:0] ? 8'h90 : _GEN_89; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_91 = 7'h5b == io_adress[6:0] ? 8'h91 : _GEN_90; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_92 = 7'h5c == io_adress[6:0] ? 8'h92 : _GEN_91; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_93 = 7'h5d == io_adress[6:0] ? 8'h93 : _GEN_92; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_94 = 7'h5e == io_adress[6:0] ? 8'h94 : _GEN_93; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_95 = 7'h5f == io_adress[6:0] ? 8'h95 : _GEN_94; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_96 = 7'h60 == io_adress[6:0] ? 8'h96 : _GEN_95; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_97 = 7'h61 == io_adress[6:0] ? 8'h97 : _GEN_96; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  wire [7:0] _GEN_98 = 7'h62 == io_adress[6:0] ? 8'h98 : _GEN_97; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
  assign io_data = 7'h63 == io_adress[6:0] ? 8'h99 : _GEN_98; // @[BcdTable.scala 15:11 BcdTable.scala 15:11]
endmodule
module DisplayMultiplexer(
  input        clock,
  input        reset,
  input  [7:0] io_sum,
  input  [7:0] io_price,
  output [6:0] io_seg,
  output [3:0] io_an
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [3:0] lys1_io_in; // @[DisplayMultiplexer.scala 17:21]
  wire [6:0] lys1_io_out; // @[DisplayMultiplexer.scala 17:21]
  wire [7:0] sum1_io_adress; // @[DisplayMultiplexer.scala 20:21]
  wire [7:0] sum1_io_data; // @[DisplayMultiplexer.scala 20:21]
  wire [7:0] pris_io_adress; // @[DisplayMultiplexer.scala 23:21]
  wire [7:0] pris_io_data; // @[DisplayMultiplexer.scala 23:21]
  reg [31:0] tickCounterReg; // @[DisplayMultiplexer.scala 26:31]
  wire  tick = tickCounterReg == 32'h1869f; // @[DisplayMultiplexer.scala 27:29]
  wire [31:0] _T_2 = tickCounterReg + 32'h1; // @[DisplayMultiplexer.scala 29:35]
  reg [1:0] lowFrequCntReg; // @[DisplayMultiplexer.scala 34:31]
  wire [1:0] _T_4 = lowFrequCntReg + 2'h1; // @[DisplayMultiplexer.scala 36:37]
  wire [3:0] _GEN_2 = lowFrequCntReg == 2'h0 ? sum1_io_data[7:4] : io_sum[7:4]; // @[DisplayMultiplexer.scala 39:37 DisplayMultiplexer.scala 40:16 DisplayMultiplexer.scala 18:14]
  wire [6:0] _GEN_3 = lowFrequCntReg == 2'h0 ? lys1_io_out : 7'h7f; // @[DisplayMultiplexer.scala 39:37 DisplayMultiplexer.scala 41:12]
  wire [3:0] _GEN_4 = lowFrequCntReg == 2'h0 ? 4'h7 : 4'h1; // @[DisplayMultiplexer.scala 39:37 DisplayMultiplexer.scala 42:12]
  wire [3:0] _GEN_5 = lowFrequCntReg == 2'h1 ? sum1_io_data[3:0] : _GEN_2; // @[DisplayMultiplexer.scala 44:36 DisplayMultiplexer.scala 45:16]
  wire [6:0] _GEN_6 = lowFrequCntReg == 2'h1 ? lys1_io_out : _GEN_3; // @[DisplayMultiplexer.scala 44:36 DisplayMultiplexer.scala 46:12]
  wire [3:0] _GEN_7 = lowFrequCntReg == 2'h1 ? 4'hb : _GEN_4; // @[DisplayMultiplexer.scala 44:36 DisplayMultiplexer.scala 47:12]
  wire [3:0] _GEN_8 = lowFrequCntReg == 2'h2 ? pris_io_data[7:4] : _GEN_5; // @[DisplayMultiplexer.scala 50:37 DisplayMultiplexer.scala 51:16]
  wire [6:0] _GEN_9 = lowFrequCntReg == 2'h2 ? lys1_io_out : _GEN_6; // @[DisplayMultiplexer.scala 50:37 DisplayMultiplexer.scala 52:12]
  wire [3:0] _GEN_10 = lowFrequCntReg == 2'h2 ? 4'hd : _GEN_7; // @[DisplayMultiplexer.scala 50:37 DisplayMultiplexer.scala 53:12]
  wire [6:0] sevSeg = lowFrequCntReg == 2'h3 ? lys1_io_out : _GEN_9; // @[DisplayMultiplexer.scala 56:37 DisplayMultiplexer.scala 58:12]
  SevenSegDec lys1 ( // @[DisplayMultiplexer.scala 17:21]
    .io_in(lys1_io_in),
    .io_out(lys1_io_out)
  );
  BcdTable sum1 ( // @[DisplayMultiplexer.scala 20:21]
    .io_adress(sum1_io_adress),
    .io_data(sum1_io_data)
  );
  BcdTable pris ( // @[DisplayMultiplexer.scala 23:21]
    .io_adress(pris_io_adress),
    .io_data(pris_io_data)
  );
  assign io_seg = ~sevSeg; // @[DisplayMultiplexer.scala 64:13]
  assign io_an = lowFrequCntReg == 2'h3 ? 4'he : _GEN_10; // @[DisplayMultiplexer.scala 56:37 DisplayMultiplexer.scala 59:12]
  assign lys1_io_in = lowFrequCntReg == 2'h3 ? pris_io_data[3:0] : _GEN_8; // @[DisplayMultiplexer.scala 56:37 DisplayMultiplexer.scala 57:16]
  assign sum1_io_adress = io_sum; // @[DisplayMultiplexer.scala 21:18]
  assign pris_io_adress = io_price; // @[DisplayMultiplexer.scala 24:18]
  always @(posedge clock) begin
    if (reset) begin // @[DisplayMultiplexer.scala 26:31]
      tickCounterReg <= 32'h0; // @[DisplayMultiplexer.scala 26:31]
    end else if (tick) begin // @[DisplayMultiplexer.scala 30:15]
      tickCounterReg <= 32'h0; // @[DisplayMultiplexer.scala 31:20]
    end else begin
      tickCounterReg <= _T_2; // @[DisplayMultiplexer.scala 29:18]
    end
    if (reset) begin // @[DisplayMultiplexer.scala 34:31]
      lowFrequCntReg <= 2'h0; // @[DisplayMultiplexer.scala 34:31]
    end else if (tick) begin // @[DisplayMultiplexer.scala 35:15]
      lowFrequCntReg <= _T_4; // @[DisplayMultiplexer.scala 36:20]
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
  lowFrequCntReg = _RAND_1[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Display(
  input         clock,
  input         reset,
  input  [15:0] io_sw,
  output [6:0]  io_seg,
  output [3:0]  io_an
);
  wire  dispMux_clock; // @[Display.scala 15:23]
  wire  dispMux_reset; // @[Display.scala 15:23]
  wire [7:0] dispMux_io_sum; // @[Display.scala 15:23]
  wire [7:0] dispMux_io_price; // @[Display.scala 15:23]
  wire [6:0] dispMux_io_seg; // @[Display.scala 15:23]
  wire [3:0] dispMux_io_an; // @[Display.scala 15:23]
  DisplayMultiplexer dispMux ( // @[Display.scala 15:23]
    .clock(dispMux_clock),
    .reset(dispMux_reset),
    .io_sum(dispMux_io_sum),
    .io_price(dispMux_io_price),
    .io_seg(dispMux_io_seg),
    .io_an(dispMux_io_an)
  );
  assign io_seg = dispMux_io_seg; // @[Display.scala 22:10]
  assign io_an = dispMux_io_an; // @[Display.scala 23:9]
  assign dispMux_clock = clock;
  assign dispMux_reset = reset;
  assign dispMux_io_sum = io_sw[15:8]; // @[Display.scala 19:26]
  assign dispMux_io_price = io_sw[7:0]; // @[Display.scala 18:28]
endmodule
