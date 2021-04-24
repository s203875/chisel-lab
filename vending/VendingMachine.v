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
module VendingMachine(
  input        clock,
  input        reset,
  input  [4:0] io_price,
  input        io_coin2,
  input        io_coin5,
  input        io_buy,
  output       io_releaseCan,
  output       io_alarm,
  output [6:0] io_seg,
  output [3:0] io_an
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  wire [3:0] lys1_io_in; // @[VendingMachine.scala 19:21]
  wire [6:0] lys1_io_out; // @[VendingMachine.scala 19:21]
  wire [7:0] sum1_io_adress; // @[VendingMachine.scala 21:21]
  wire [7:0] sum1_io_data; // @[VendingMachine.scala 21:21]
  wire [7:0] pris_io_adress; // @[VendingMachine.scala 23:21]
  wire [7:0] pris_io_data; // @[VendingMachine.scala 23:21]
  reg [7:0] sum; // @[VendingMachine.scala 17:20]
  reg [2:0] stateReg; // @[VendingMachine.scala 31:25]
  reg  REG; // @[VendingMachine.scala 33:34]
  wire  risingb = io_buy & ~REG; // @[VendingMachine.scala 33:24]
  reg  REG_1; // @[VendingMachine.scala 34:35]
  wire  fallingb = ~io_buy & REG_1; // @[VendingMachine.scala 34:26]
  reg  REG_2; // @[VendingMachine.scala 35:36]
  wire  rising5 = io_coin5 & ~REG_2; // @[VendingMachine.scala 35:26]
  reg  REG_3; // @[VendingMachine.scala 36:36]
  wire  rising2 = io_coin2 & ~REG_3; // @[VendingMachine.scala 36:26]
  wire  _T_5 = 3'h0 == stateReg; // @[Conditional.scala 37:30]
  wire [7:0] _GEN_40 = {{3'd0}, io_price}; // @[VendingMachine.scala 57:17]
  wire [2:0] _GEN_3 = rising2 ? 3'h2 : stateReg; // @[VendingMachine.scala 66:27 VendingMachine.scala 67:18 VendingMachine.scala 31:25]
  wire  _T_7 = 3'h1 == stateReg; // @[Conditional.scala 37:30]
  wire  _T_8 = 3'h2 == stateReg; // @[Conditional.scala 37:30]
  wire  _T_9 = 3'h3 == stateReg; // @[Conditional.scala 37:30]
  wire [2:0] _GEN_8 = fallingb ? 3'h0 : stateReg; // @[VendingMachine.scala 77:22 VendingMachine.scala 78:18 VendingMachine.scala 31:25]
  wire  _T_10 = 3'h4 == stateReg; // @[Conditional.scala 37:30]
  wire [2:0] _GEN_9 = _T_10 ? _GEN_8 : stateReg; // @[Conditional.scala 39:67 VendingMachine.scala 31:25]
  wire [2:0] _GEN_10 = _T_9 ? _GEN_8 : _GEN_9; // @[Conditional.scala 39:67]
  wire [7:0] _T_14 = sum + 8'h5; // @[VendingMachine.scala 93:13]
  wire [7:0] _T_17 = sum + 8'h2; // @[VendingMachine.scala 96:13]
  wire  _T_18 = stateReg == 3'h3; // @[VendingMachine.scala 98:16]
  wire [7:0] _T_20 = sum - _GEN_40; // @[VendingMachine.scala 101:13]
  reg [31:0] tickCounterReg; // @[VendingMachine.scala 113:31]
  wire  tick = tickCounterReg == 32'h1869f; // @[VendingMachine.scala 114:29]
  wire [31:0] _T_23 = tickCounterReg + 32'h1; // @[VendingMachine.scala 116:35]
  reg [1:0] lowFrequCntReg; // @[VendingMachine.scala 121:31]
  wire [1:0] _T_25 = lowFrequCntReg + 2'h1; // @[VendingMachine.scala 123:37]
  wire [3:0] _GEN_28 = lowFrequCntReg == 2'h0 ? sum1_io_data[7:4] : sum[7:4]; // @[VendingMachine.scala 126:37 VendingMachine.scala 127:16 VendingMachine.scala 20:13]
  wire [6:0] _GEN_29 = lowFrequCntReg == 2'h0 ? lys1_io_out : 7'h0; // @[VendingMachine.scala 126:37 VendingMachine.scala 128:12]
  wire [3:0] _GEN_30 = lowFrequCntReg == 2'h0 ? 4'h7 : 4'h1; // @[VendingMachine.scala 126:37 VendingMachine.scala 129:12]
  wire [3:0] _GEN_31 = lowFrequCntReg == 2'h1 ? sum1_io_data[3:0] : _GEN_28; // @[VendingMachine.scala 131:36 VendingMachine.scala 132:16]
  wire [6:0] _GEN_32 = lowFrequCntReg == 2'h1 ? lys1_io_out : _GEN_29; // @[VendingMachine.scala 131:36 VendingMachine.scala 133:12]
  wire [3:0] _GEN_33 = lowFrequCntReg == 2'h1 ? 4'hb : _GEN_30; // @[VendingMachine.scala 131:36 VendingMachine.scala 134:12]
  wire [3:0] _GEN_34 = lowFrequCntReg == 2'h2 ? pris_io_data[7:4] : _GEN_31; // @[VendingMachine.scala 137:37 VendingMachine.scala 138:16]
  wire [6:0] _GEN_35 = lowFrequCntReg == 2'h2 ? lys1_io_out : _GEN_32; // @[VendingMachine.scala 137:37 VendingMachine.scala 139:12]
  wire [3:0] _GEN_36 = lowFrequCntReg == 2'h2 ? 4'hd : _GEN_33; // @[VendingMachine.scala 137:37 VendingMachine.scala 140:12]
  wire [6:0] sevSeg = lowFrequCntReg == 2'h3 ? lys1_io_out : _GEN_35; // @[VendingMachine.scala 143:37 VendingMachine.scala 145:12]
  SevenSegDec lys1 ( // @[VendingMachine.scala 19:21]
    .io_in(lys1_io_in),
    .io_out(lys1_io_out)
  );
  BcdTable sum1 ( // @[VendingMachine.scala 21:21]
    .io_adress(sum1_io_adress),
    .io_data(sum1_io_data)
  );
  BcdTable pris ( // @[VendingMachine.scala 23:21]
    .io_adress(pris_io_adress),
    .io_data(pris_io_data)
  );
  assign io_releaseCan = stateReg == 3'h4 ? 1'h0 : _T_18; // @[VendingMachine.scala 103:22 VendingMachine.scala 105:18]
  assign io_alarm = stateReg == 3'h4; // @[VendingMachine.scala 103:16]
  assign io_seg = ~sevSeg; // @[VendingMachine.scala 152:13]
  assign io_an = lowFrequCntReg == 2'h3 ? 4'he : _GEN_36; // @[VendingMachine.scala 143:37 VendingMachine.scala 146:12]
  assign lys1_io_in = lowFrequCntReg == 2'h3 ? pris_io_data[3:0] : _GEN_34; // @[VendingMachine.scala 143:37 VendingMachine.scala 144:16]
  assign sum1_io_adress = sum; // @[VendingMachine.scala 22:18]
  assign pris_io_adress = {{3'd0}, io_price}; // @[VendingMachine.scala 24:18]
  always @(posedge clock) begin
    if (reset) begin // @[VendingMachine.scala 17:20]
      sum <= 8'h0; // @[VendingMachine.scala 17:20]
    end else if (stateReg == 3'h3) begin // @[VendingMachine.scala 98:22]
      sum <= _T_20; // @[VendingMachine.scala 101:8]
    end else if (stateReg == 3'h2) begin // @[VendingMachine.scala 95:23]
      sum <= _T_17; // @[VendingMachine.scala 96:8]
    end else if (stateReg == 3'h1) begin // @[VendingMachine.scala 92:23]
      sum <= _T_14; // @[VendingMachine.scala 93:8]
    end
    if (reset) begin // @[VendingMachine.scala 31:25]
      stateReg <= 3'h0; // @[VendingMachine.scala 31:25]
    end else if (_T_5) begin // @[Conditional.scala 40:58]
      if (risingb) begin // @[VendingMachine.scala 56:21]
        if (sum >= _GEN_40) begin // @[VendingMachine.scala 57:28]
          stateReg <= 3'h3; // @[VendingMachine.scala 58:19]
        end else begin
          stateReg <= 3'h4; // @[VendingMachine.scala 61:18]
        end
      end else if (rising5) begin // @[VendingMachine.scala 64:27]
        stateReg <= 3'h1; // @[VendingMachine.scala 65:18]
      end else begin
        stateReg <= _GEN_3;
      end
    end else if (_T_7) begin // @[Conditional.scala 39:67]
      stateReg <= 3'h0; // @[VendingMachine.scala 71:15]
    end else if (_T_8) begin // @[Conditional.scala 39:67]
      stateReg <= 3'h0; // @[VendingMachine.scala 74:15]
    end else begin
      stateReg <= _GEN_10;
    end
    REG <= io_buy; // @[VendingMachine.scala 33:34]
    REG_1 <= io_buy; // @[VendingMachine.scala 34:35]
    REG_2 <= io_coin5; // @[VendingMachine.scala 35:36]
    REG_3 <= io_coin2; // @[VendingMachine.scala 36:36]
    if (reset) begin // @[VendingMachine.scala 113:31]
      tickCounterReg <= 32'h0; // @[VendingMachine.scala 113:31]
    end else if (tick) begin // @[VendingMachine.scala 117:15]
      tickCounterReg <= 32'h0; // @[VendingMachine.scala 118:20]
    end else begin
      tickCounterReg <= _T_23; // @[VendingMachine.scala 116:18]
    end
    if (reset) begin // @[VendingMachine.scala 121:31]
      lowFrequCntReg <= 2'h0; // @[VendingMachine.scala 121:31]
    end else if (tick) begin // @[VendingMachine.scala 122:15]
      lowFrequCntReg <= _T_25; // @[VendingMachine.scala 123:20]
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
  sum = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  stateReg = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  REG = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  REG_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  REG_2 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  REG_3 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  tickCounterReg = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  lowFrequCntReg = _RAND_7[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
