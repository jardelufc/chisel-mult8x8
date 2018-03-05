module Reg( // @[:@3.2:Mult8x8.lo.fir@2.2]
  input         clock, // @[:@4.4:Mult8x8.lo.fir@3.4]
  input         reset, // @[:@5.4:Mult8x8.lo.fir@4.4]
  input         io_clr, // @[:@6.4:Mult8x8.lo.fir@5.4]
  input         io_clken, // @[:@6.4:Mult8x8.lo.fir@6.4]
  input  [15:0] io_in_reg, // @[:@6.4:Mult8x8.lo.fir@7.4]
  output [15:0] io_out_reg // @[:@6.4:Mult8x8.lo.fir@8.4]
);
  reg [15:0] res; // @[:Mult8x8.lo.fir@10.4]
  reg [31:0] _RAND_0;
  wire  _T_9; // @[Reg.scala 18:10:@9.4:Mult8x8.lo.fir@12.4]
  wire  _T_12; // @[Reg.scala 22:26:@14.6:Mult8x8.lo.fir@13.4]
  wire  _T_13; // @[Reg.scala 22:23:@15.6:Mult8x8.lo.fir@14.4]
  wire [15:0] _GEN_0; // @[Reg.scala 23:3:@16.6:Mult8x8.lo.fir@15.4]
  wire [15:0] _GEN_1; // @[Reg.scala 19:3:@10.4:Mult8x8.lo.fir@16.4]
  assign _T_9 = io_clr == 1'h0; // @[Reg.scala 18:10:@9.4:Mult8x8.lo.fir@12.4]
  assign _T_12 = io_clken == 1'h0; // @[Reg.scala 22:26:@14.6:Mult8x8.lo.fir@13.4]
  assign _T_13 = io_clr & _T_12; // @[Reg.scala 22:23:@15.6:Mult8x8.lo.fir@14.4]
  assign _GEN_0 = _T_13 ? io_in_reg : res; // @[Reg.scala 23:3:@16.6:Mult8x8.lo.fir@15.4]
  assign _GEN_1 = _T_9 ? 16'h0 : _GEN_0; // @[Reg.scala 19:3:@10.4:Mult8x8.lo.fir@16.4]
  assign io_out_reg = res;
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
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  res = _RAND_0[15:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      res <= 16'h0;
    end else begin
      if (_T_9) begin
        res <= 16'h0;
      end else begin
        if (_T_13) begin
          res <= io_in_reg;
        end
      end
    end
  end
endmodule
module Control( // @[:@21.2:Mult8x8.lo.fir@20.2]
  input        clock, // @[:@22.4:Mult8x8.lo.fir@21.4]
  input        reset, // @[:@23.4:Mult8x8.lo.fir@22.4]
  input        io_start, // @[:@24.4:Mult8x8.lo.fir@23.4]
  input  [1:0] io_count, // @[:@24.4:Mult8x8.lo.fir@24.4]
  output [1:0] io_in_sel, // @[:@24.4:Mult8x8.lo.fir@27.4]
  output [1:0] io_shift, // @[:@24.4:Mult8x8.lo.fir@28.4]
  output       io_done, // @[:@24.4:Mult8x8.lo.fir@29.4]
  output       io_clken, // @[:@24.4:Mult8x8.lo.fir@30.4]
  output       io_regclr // @[:@24.4:Mult8x8.lo.fir@31.4]
);
  reg [2:0] state; // @[:Mult8x8.lo.fir@33.4]
  reg [31:0] _RAND_0;
  reg [1:0] myin_sel; // @[:Mult8x8.lo.fir@37.4]
  reg [31:0] _RAND_1;
  reg [1:0] myshift; // @[:Mult8x8.lo.fir@39.4]
  reg [31:0] _RAND_2;
  reg  mydone; // @[:Mult8x8.lo.fir@41.4]
  reg [31:0] _RAND_3;
  reg  myclken; // @[:Mult8x8.lo.fir@43.4]
  reg [31:0] _RAND_4;
  reg  myregclr; // @[:Mult8x8.lo.fir@45.4]
  reg [31:0] _RAND_5;
  wire  _T_18; // @[Conditional.scala 37:30:@39.4:Mult8x8.lo.fir@47.4]
  wire  _GEN_2; // @[Control.scala 47:23:@42.6:Mult8x8.lo.fir@50.4]
  wire [2:0] _GEN_3; // @[Control.scala 47:23:@42.6:Mult8x8.lo.fir@51.4]
  wire  _T_30; // @[Conditional.scala 37:30:@59.6:Mult8x8.lo.fir@52.4]
  wire  _T_33; // @[Control.scala 64:13:@62.8:Mult8x8.lo.fir@53.4]
  wire  _T_35; // @[Control.scala 64:34:@63.8:Mult8x8.lo.fir@54.4]
  wire  _T_36; // @[Control.scala 64:23:@64.8:Mult8x8.lo.fir@55.4]
  wire [2:0] _GEN_4; // @[Control.scala 64:43:@65.8:Mult8x8.lo.fir@56.4]
  wire [1:0] _GEN_5; // @[Control.scala 64:43:@65.8:Mult8x8.lo.fir@57.4]
  wire [1:0] _GEN_6; // @[Control.scala 64:43:@65.8:Mult8x8.lo.fir@58.4]
  wire  _GEN_8; // @[Control.scala 64:43:@65.8:Mult8x8.lo.fir@60.4]
  wire  _T_45; // @[Conditional.scala 37:30:@81.8:Mult8x8.lo.fir@62.4]
  wire  _T_50; // @[Control.scala 80:34:@85.10:Mult8x8.lo.fir@64.4]
  wire  _T_51; // @[Control.scala 80:23:@86.10:Mult8x8.lo.fir@65.4]
  wire  _T_60; // @[Control.scala 87:39:@97.12:Mult8x8.lo.fir@67.4]
  wire  _T_61; // @[Control.scala 87:28:@98.12:Mult8x8.lo.fir@68.4]
  wire [1:0] _GEN_10; // @[Control.scala 87:47:@99.12:Mult8x8.lo.fir@69.4]
  wire [1:0] _GEN_11; // @[Control.scala 87:47:@99.12:Mult8x8.lo.fir@70.4]
  wire  _GEN_13; // @[Control.scala 87:47:@99.12:Mult8x8.lo.fir@72.4]
  wire [2:0] _GEN_15; // @[Control.scala 87:47:@99.12:Mult8x8.lo.fir@74.4]
  wire [2:0] _GEN_16; // @[Control.scala 80:42:@87.10:Mult8x8.lo.fir@75.4]
  wire [1:0] _GEN_17; // @[Control.scala 80:42:@87.10:Mult8x8.lo.fir@76.4]
  wire [1:0] _GEN_18; // @[Control.scala 80:42:@87.10:Mult8x8.lo.fir@77.4]
  wire  _GEN_20; // @[Control.scala 80:42:@87.10:Mult8x8.lo.fir@79.4]
  wire  _T_70; // @[Conditional.scala 37:30:@114.10:Mult8x8.lo.fir@81.4]
  wire  _T_75; // @[Control.scala 102:34:@118.12:Mult8x8.lo.fir@83.4]
  wire  _T_76; // @[Control.scala 102:23:@119.12:Mult8x8.lo.fir@84.4]
  wire [2:0] _GEN_22; // @[Control.scala 102:42:@120.12:Mult8x8.lo.fir@85.4]
  wire [1:0] _GEN_23; // @[Control.scala 102:42:@120.12:Mult8x8.lo.fir@86.4]
  wire [1:0] _GEN_24; // @[Control.scala 102:42:@120.12:Mult8x8.lo.fir@87.4]
  wire  _GEN_26; // @[Control.scala 102:42:@120.12:Mult8x8.lo.fir@89.4]
  wire  _T_85; // @[Conditional.scala 37:30:@136.12:Mult8x8.lo.fir@91.4]
  wire [2:0] _GEN_29; // @[Conditional.scala 39:67:@137.12:Mult8x8.lo.fir@93.4]
  wire  _GEN_30; // @[Conditional.scala 39:67:@137.12:Mult8x8.lo.fir@94.4]
  wire  _GEN_31; // @[Conditional.scala 39:67:@137.12:Mult8x8.lo.fir@95.4]
  wire  _GEN_32; // @[Conditional.scala 39:67:@137.12:Mult8x8.lo.fir@96.4]
  wire [2:0] _GEN_34; // @[Conditional.scala 39:67:@115.10:Mult8x8.lo.fir@98.4]
  wire [1:0] _GEN_35; // @[Conditional.scala 39:67:@115.10:Mult8x8.lo.fir@99.4]
  wire [1:0] _GEN_36; // @[Conditional.scala 39:67:@115.10:Mult8x8.lo.fir@100.4]
  wire  _GEN_37; // @[Conditional.scala 39:67:@115.10:Mult8x8.lo.fir@101.4]
  wire  _GEN_38; // @[Conditional.scala 39:67:@115.10:Mult8x8.lo.fir@102.4]
  wire  _GEN_39; // @[Conditional.scala 39:67:@115.10:Mult8x8.lo.fir@103.4]
  wire [2:0] _GEN_41; // @[Conditional.scala 39:67:@82.8:Mult8x8.lo.fir@105.4]
  wire [1:0] _GEN_42; // @[Conditional.scala 39:67:@82.8:Mult8x8.lo.fir@106.4]
  wire [1:0] _GEN_43; // @[Conditional.scala 39:67:@82.8:Mult8x8.lo.fir@107.4]
  wire  _GEN_44; // @[Conditional.scala 39:67:@82.8:Mult8x8.lo.fir@108.4]
  wire  _GEN_45; // @[Conditional.scala 39:67:@82.8:Mult8x8.lo.fir@109.4]
  wire  _GEN_46; // @[Conditional.scala 39:67:@82.8:Mult8x8.lo.fir@110.4]
  wire [2:0] _GEN_48; // @[Conditional.scala 39:67:@60.6:Mult8x8.lo.fir@112.4]
  wire [1:0] _GEN_49; // @[Conditional.scala 39:67:@60.6:Mult8x8.lo.fir@113.4]
  wire [1:0] _GEN_50; // @[Conditional.scala 39:67:@60.6:Mult8x8.lo.fir@114.4]
  wire  _GEN_51; // @[Conditional.scala 39:67:@60.6:Mult8x8.lo.fir@115.4]
  wire  _GEN_52; // @[Conditional.scala 39:67:@60.6:Mult8x8.lo.fir@116.4]
  wire  _GEN_53; // @[Conditional.scala 39:67:@60.6:Mult8x8.lo.fir@117.4]
  wire [1:0] _GEN_55; // @[Conditional.scala 40:58:@40.4:Mult8x8.lo.fir@119.4]
  wire [1:0] _GEN_56; // @[Conditional.scala 40:58:@40.4:Mult8x8.lo.fir@120.4]
  wire  _GEN_57; // @[Conditional.scala 40:58:@40.4:Mult8x8.lo.fir@121.4]
  wire  _GEN_58; // @[Conditional.scala 40:58:@40.4:Mult8x8.lo.fir@122.4]
  wire  _GEN_59; // @[Conditional.scala 40:58:@40.4:Mult8x8.lo.fir@123.4]
  wire [2:0] _GEN_60; // @[Conditional.scala 40:58:@40.4:Mult8x8.lo.fir@124.4]
  assign _T_18 = 3'h0 == state; // @[Conditional.scala 37:30:@39.4:Mult8x8.lo.fir@47.4]
  assign _GEN_2 = io_start ? 1'h0 : 1'h1; // @[Control.scala 47:23:@42.6:Mult8x8.lo.fir@50.4]
  assign _GEN_3 = io_start ? 3'h1 : state; // @[Control.scala 47:23:@42.6:Mult8x8.lo.fir@51.4]
  assign _T_30 = 3'h1 == state; // @[Conditional.scala 37:30:@59.6:Mult8x8.lo.fir@52.4]
  assign _T_33 = io_start == 1'h0; // @[Control.scala 64:13:@62.8:Mult8x8.lo.fir@53.4]
  assign _T_35 = io_count == 2'h0; // @[Control.scala 64:34:@63.8:Mult8x8.lo.fir@54.4]
  assign _T_36 = _T_33 & _T_35; // @[Control.scala 64:23:@64.8:Mult8x8.lo.fir@55.4]
  assign _GEN_4 = _T_36 ? 3'h2 : 3'h4; // @[Control.scala 64:43:@65.8:Mult8x8.lo.fir@56.4]
  assign _GEN_5 = _T_36 ? 2'h0 : myin_sel; // @[Control.scala 64:43:@65.8:Mult8x8.lo.fir@57.4]
  assign _GEN_6 = _T_36 ? 2'h0 : myshift; // @[Control.scala 64:43:@65.8:Mult8x8.lo.fir@58.4]
  assign _GEN_8 = _T_36 ? 1'h0 : 1'h1; // @[Control.scala 64:43:@65.8:Mult8x8.lo.fir@60.4]
  assign _T_45 = 3'h2 == state; // @[Conditional.scala 37:30:@81.8:Mult8x8.lo.fir@62.4]
  assign _T_50 = io_count == 2'h2; // @[Control.scala 80:34:@85.10:Mult8x8.lo.fir@64.4]
  assign _T_51 = _T_33 & _T_50; // @[Control.scala 80:23:@86.10:Mult8x8.lo.fir@65.4]
  assign _T_60 = io_count == 2'h1; // @[Control.scala 87:39:@97.12:Mult8x8.lo.fir@67.4]
  assign _T_61 = _T_33 & _T_60; // @[Control.scala 87:28:@98.12:Mult8x8.lo.fir@68.4]
  assign _GEN_10 = _T_61 ? 2'h1 : myin_sel; // @[Control.scala 87:47:@99.12:Mult8x8.lo.fir@69.4]
  assign _GEN_11 = _T_61 ? 2'h1 : myshift; // @[Control.scala 87:47:@99.12:Mult8x8.lo.fir@70.4]
  assign _GEN_13 = _T_61 ? 1'h0 : 1'h1; // @[Control.scala 87:47:@99.12:Mult8x8.lo.fir@72.4]
  assign _GEN_15 = _T_61 ? state : 3'h4; // @[Control.scala 87:47:@99.12:Mult8x8.lo.fir@74.4]
  assign _GEN_16 = _T_51 ? 3'h3 : _GEN_15; // @[Control.scala 80:42:@87.10:Mult8x8.lo.fir@75.4]
  assign _GEN_17 = _T_51 ? 2'h2 : _GEN_10; // @[Control.scala 80:42:@87.10:Mult8x8.lo.fir@76.4]
  assign _GEN_18 = _T_51 ? 2'h1 : _GEN_11; // @[Control.scala 80:42:@87.10:Mult8x8.lo.fir@77.4]
  assign _GEN_20 = _T_51 ? 1'h0 : _GEN_13; // @[Control.scala 80:42:@87.10:Mult8x8.lo.fir@79.4]
  assign _T_70 = 3'h3 == state; // @[Conditional.scala 37:30:@114.10:Mult8x8.lo.fir@81.4]
  assign _T_75 = io_count == 2'h3; // @[Control.scala 102:34:@118.12:Mult8x8.lo.fir@83.4]
  assign _T_76 = _T_33 & _T_75; // @[Control.scala 102:23:@119.12:Mult8x8.lo.fir@84.4]
  assign _GEN_22 = _T_76 ? 3'h0 : 3'h4; // @[Control.scala 102:42:@120.12:Mult8x8.lo.fir@85.4]
  assign _GEN_23 = _T_76 ? 2'h3 : myin_sel; // @[Control.scala 102:42:@120.12:Mult8x8.lo.fir@86.4]
  assign _GEN_24 = _T_76 ? 2'h2 : myshift; // @[Control.scala 102:42:@120.12:Mult8x8.lo.fir@87.4]
  assign _GEN_26 = _T_76 ? 1'h0 : 1'h1; // @[Control.scala 102:42:@120.12:Mult8x8.lo.fir@89.4]
  assign _T_85 = 3'h4 == state; // @[Conditional.scala 37:30:@136.12:Mult8x8.lo.fir@91.4]
  assign _GEN_29 = _T_85 ? _GEN_3 : state; // @[Conditional.scala 39:67:@137.12:Mult8x8.lo.fir@93.4]
  assign _GEN_30 = _T_85 ? 1'h0 : mydone; // @[Conditional.scala 39:67:@137.12:Mult8x8.lo.fir@94.4]
  assign _GEN_31 = _T_85 ? 1'h1 : myclken; // @[Conditional.scala 39:67:@137.12:Mult8x8.lo.fir@95.4]
  assign _GEN_32 = _T_85 ? _GEN_2 : myregclr; // @[Conditional.scala 39:67:@137.12:Mult8x8.lo.fir@96.4]
  assign _GEN_34 = _T_70 ? _GEN_22 : _GEN_29; // @[Conditional.scala 39:67:@115.10:Mult8x8.lo.fir@98.4]
  assign _GEN_35 = _T_70 ? _GEN_23 : myin_sel; // @[Conditional.scala 39:67:@115.10:Mult8x8.lo.fir@99.4]
  assign _GEN_36 = _T_70 ? _GEN_24 : myshift; // @[Conditional.scala 39:67:@115.10:Mult8x8.lo.fir@100.4]
  assign _GEN_37 = _T_70 ? _T_76 : _GEN_30; // @[Conditional.scala 39:67:@115.10:Mult8x8.lo.fir@101.4]
  assign _GEN_38 = _T_70 ? _GEN_26 : _GEN_31; // @[Conditional.scala 39:67:@115.10:Mult8x8.lo.fir@102.4]
  assign _GEN_39 = _T_70 ? 1'h1 : _GEN_32; // @[Conditional.scala 39:67:@115.10:Mult8x8.lo.fir@103.4]
  assign _GEN_41 = _T_45 ? _GEN_16 : _GEN_34; // @[Conditional.scala 39:67:@82.8:Mult8x8.lo.fir@105.4]
  assign _GEN_42 = _T_45 ? _GEN_17 : _GEN_35; // @[Conditional.scala 39:67:@82.8:Mult8x8.lo.fir@106.4]
  assign _GEN_43 = _T_45 ? _GEN_18 : _GEN_36; // @[Conditional.scala 39:67:@82.8:Mult8x8.lo.fir@107.4]
  assign _GEN_44 = _T_45 ? 1'h0 : _GEN_37; // @[Conditional.scala 39:67:@82.8:Mult8x8.lo.fir@108.4]
  assign _GEN_45 = _T_45 ? _GEN_20 : _GEN_38; // @[Conditional.scala 39:67:@82.8:Mult8x8.lo.fir@109.4]
  assign _GEN_46 = _T_45 ? 1'h1 : _GEN_39; // @[Conditional.scala 39:67:@82.8:Mult8x8.lo.fir@110.4]
  assign _GEN_48 = _T_30 ? _GEN_4 : _GEN_41; // @[Conditional.scala 39:67:@60.6:Mult8x8.lo.fir@112.4]
  assign _GEN_49 = _T_30 ? _GEN_5 : _GEN_42; // @[Conditional.scala 39:67:@60.6:Mult8x8.lo.fir@113.4]
  assign _GEN_50 = _T_30 ? _GEN_6 : _GEN_43; // @[Conditional.scala 39:67:@60.6:Mult8x8.lo.fir@114.4]
  assign _GEN_51 = _T_30 ? 1'h0 : _GEN_44; // @[Conditional.scala 39:67:@60.6:Mult8x8.lo.fir@115.4]
  assign _GEN_52 = _T_30 ? _GEN_8 : _GEN_45; // @[Conditional.scala 39:67:@60.6:Mult8x8.lo.fir@116.4]
  assign _GEN_53 = _T_30 ? 1'h1 : _GEN_46; // @[Conditional.scala 39:67:@60.6:Mult8x8.lo.fir@117.4]
  assign _GEN_55 = _T_18 ? 2'h0 : _GEN_49; // @[Conditional.scala 40:58:@40.4:Mult8x8.lo.fir@119.4]
  assign _GEN_56 = _T_18 ? 2'h0 : _GEN_50; // @[Conditional.scala 40:58:@40.4:Mult8x8.lo.fir@120.4]
  assign _GEN_57 = _T_18 ? 1'h0 : _GEN_51; // @[Conditional.scala 40:58:@40.4:Mult8x8.lo.fir@121.4]
  assign _GEN_58 = _T_18 ? 1'h1 : _GEN_52; // @[Conditional.scala 40:58:@40.4:Mult8x8.lo.fir@122.4]
  assign _GEN_59 = _T_18 ? _GEN_2 : _GEN_53; // @[Conditional.scala 40:58:@40.4:Mult8x8.lo.fir@123.4]
  assign _GEN_60 = _T_18 ? _GEN_3 : _GEN_48; // @[Conditional.scala 40:58:@40.4:Mult8x8.lo.fir@124.4]
  assign io_in_sel = myin_sel;
  assign io_shift = myshift;
  assign io_done = mydone;
  assign io_clken = myclken;
  assign io_regclr = myregclr;
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
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  state = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  myin_sel = _RAND_1[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  myshift = _RAND_2[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  mydone = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  myclken = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  myregclr = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      state <= 3'h0;
    end else begin
      if (_T_18) begin
        if (io_start) begin
          state <= 3'h1;
        end
      end else begin
        if (_T_30) begin
          if (_T_36) begin
            state <= 3'h2;
          end else begin
            state <= 3'h4;
          end
        end else begin
          if (_T_45) begin
            if (_T_51) begin
              state <= 3'h3;
            end else begin
              if (!(_T_61)) begin
                state <= 3'h4;
              end
            end
          end else begin
            if (_T_70) begin
              if (_T_76) begin
                state <= 3'h0;
              end else begin
                state <= 3'h4;
              end
            end else begin
              if (_T_85) begin
                if (io_start) begin
                  state <= 3'h1;
                end
              end
            end
          end
        end
      end
    end
    if (_T_18) begin
      myin_sel <= 2'h0;
    end else begin
      if (_T_30) begin
        if (_T_36) begin
          myin_sel <= 2'h0;
        end
      end else begin
        if (_T_45) begin
          if (_T_51) begin
            myin_sel <= 2'h2;
          end else begin
            if (_T_61) begin
              myin_sel <= 2'h1;
            end
          end
        end else begin
          if (_T_70) begin
            if (_T_76) begin
              myin_sel <= 2'h3;
            end
          end
        end
      end
    end
    if (_T_18) begin
      myshift <= 2'h0;
    end else begin
      if (_T_30) begin
        if (_T_36) begin
          myshift <= 2'h0;
        end
      end else begin
        if (_T_45) begin
          if (_T_51) begin
            myshift <= 2'h1;
          end else begin
            if (_T_61) begin
              myshift <= 2'h1;
            end
          end
        end else begin
          if (_T_70) begin
            if (_T_76) begin
              myshift <= 2'h2;
            end
          end
        end
      end
    end
    if (_T_18) begin
      mydone <= 1'h0;
    end else begin
      if (_T_30) begin
        mydone <= 1'h0;
      end else begin
        if (_T_45) begin
          mydone <= 1'h0;
        end else begin
          if (_T_70) begin
            mydone <= _T_76;
          end else begin
            if (_T_85) begin
              mydone <= 1'h0;
            end
          end
        end
      end
    end
    if (_T_18) begin
      myclken <= 1'h1;
    end else begin
      if (_T_30) begin
        if (_T_36) begin
          myclken <= 1'h0;
        end else begin
          myclken <= 1'h1;
        end
      end else begin
        if (_T_45) begin
          if (_T_51) begin
            myclken <= 1'h0;
          end else begin
            if (_T_61) begin
              myclken <= 1'h0;
            end else begin
              myclken <= 1'h1;
            end
          end
        end else begin
          if (_T_70) begin
            if (_T_76) begin
              myclken <= 1'h0;
            end else begin
              myclken <= 1'h1;
            end
          end else begin
            if (_T_85) begin
              myclken <= 1'h1;
            end
          end
        end
      end
    end
    if (_T_18) begin
      if (io_start) begin
        myregclr <= 1'h0;
      end else begin
        myregclr <= 1'h1;
      end
    end else begin
      if (_T_30) begin
        myregclr <= 1'h1;
      end else begin
        if (_T_45) begin
          myregclr <= 1'h1;
        end else begin
          if (_T_70) begin
            myregclr <= 1'h1;
          end else begin
            if (_T_85) begin
              if (io_start) begin
                myregclr <= 1'h0;
              end else begin
                myregclr <= 1'h1;
              end
            end
          end
        end
      end
    end
  end
endmodule
module Mux4( // @[:@152.2:Mult8x8.lo.fir@139.2]
  input        io_sel, // @[:@155.4:Mult8x8.lo.fir@142.4]
  input  [3:0] io_a, // @[:@155.4:Mult8x8.lo.fir@143.4]
  input  [3:0] io_b, // @[:@155.4:Mult8x8.lo.fir@144.4]
  output [3:0] io_y // @[:@155.4:Mult8x8.lo.fir@145.4]
);
  wire [3:0] _T_6; // @[Mux4.scala 20:10:@157.4:Mult8x8.lo.fir@147.4]
  assign _T_6 = io_sel ? io_b : io_a; // @[Mux4.scala 20:10:@157.4:Mult8x8.lo.fir@147.4]
  assign io_y = _T_6;
endmodule
module Counter( // @[:@168.2:Mult8x8.lo.fir@150.2]
  input        clock, // @[:@169.4:Mult8x8.lo.fir@151.4]
  input        reset, // @[:@170.4:Mult8x8.lo.fir@152.4]
  input        io_clr, // @[:@171.4:Mult8x8.lo.fir@153.4]
  output [1:0] io_sum // @[:@171.4:Mult8x8.lo.fir@154.4]
);
  reg [1:0] accumulator; // @[:Mult8x8.lo.fir@156.4]
  reg [31:0] _RAND_0;
  wire  _T_6; // @[Counter.scala 21:8:@174.4:Mult8x8.lo.fir@158.4]
  wire [2:0] _T_9; // @[Counter.scala 27:32:@180.8:Mult8x8.lo.fir@159.4]
  wire [1:0] _T_10; // @[Counter.scala 27:32:@181.8:Mult8x8.lo.fir@160.4]
  wire [1:0] _GEN_0; // @[Counter.scala 26:3:@179.6:Mult8x8.lo.fir@161.4]
  wire [1:0] _GEN_1; // @[Counter.scala 22:3:@175.4:Mult8x8.lo.fir@162.4]
  assign _T_6 = ~ io_clr; // @[Counter.scala 21:8:@174.4:Mult8x8.lo.fir@158.4]
  assign _T_9 = accumulator + 2'h1; // @[Counter.scala 27:32:@180.8:Mult8x8.lo.fir@159.4]
  assign _T_10 = _T_9[1:0]; // @[Counter.scala 27:32:@181.8:Mult8x8.lo.fir@160.4]
  assign _GEN_0 = io_clr ? _T_10 : accumulator; // @[Counter.scala 26:3:@179.6:Mult8x8.lo.fir@161.4]
  assign _GEN_1 = _T_6 ? 2'h0 : _GEN_0; // @[Counter.scala 22:3:@175.4:Mult8x8.lo.fir@162.4]
  assign io_sum = accumulator;
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
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  accumulator = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      accumulator <= 2'h0;
    end else begin
      if (_T_6) begin
        accumulator <= 2'h0;
      end else begin
        if (io_clr) begin
          accumulator <= _T_10;
        end
      end
    end
  end
endmodule
module Mult4x4( // @[:@186.2:Mult8x8.lo.fir@166.2]
  input  [3:0] io_dataa, // @[:@189.4:Mult8x8.lo.fir@169.4]
  input  [3:0] io_datab, // @[:@189.4:Mult8x8.lo.fir@170.4]
  output [7:0] io_result // @[:@189.4:Mult8x8.lo.fir@171.4]
);
  wire [10:0] _GEN_256; // @[Mult4x4.scala 25:30:@448.4:Mult8x8.lo.fir@173.4]
  wire [10:0] _T_266; // @[Mult4x4.scala 25:30:@448.4:Mult8x8.lo.fir@173.4]
  wire [10:0] _GEN_257; // @[Mult4x4.scala 25:38:@449.4:Mult8x8.lo.fir@174.4]
  wire [10:0] _T_267; // @[Mult4x4.scala 25:38:@449.4:Mult8x8.lo.fir@174.4]
  wire [7:0] _T_269; // @[:@450.4:Mult8x8.lo.fir@175.4]
  wire [7:0] _GEN_17; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@210.4]
  wire [7:0] _GEN_18; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@212.4]
  wire [7:0] _GEN_19; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@214.4]
  wire [7:0] _GEN_20; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@216.4]
  wire [7:0] _GEN_21; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@218.4]
  wire [7:0] _GEN_22; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@220.4]
  wire [7:0] _GEN_23; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@222.4]
  wire [7:0] _GEN_24; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@224.4]
  wire [7:0] _GEN_25; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@226.4]
  wire [7:0] _GEN_26; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@228.4]
  wire [7:0] _GEN_27; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@230.4]
  wire [7:0] _GEN_28; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@232.4]
  wire [7:0] _GEN_29; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@234.4]
  wire [7:0] _GEN_30; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@236.4]
  wire [7:0] _GEN_31; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@238.4]
  wire [7:0] _GEN_32; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@240.4]
  wire [7:0] _GEN_33; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@242.4]
  wire [7:0] _GEN_34; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@244.4]
  wire [7:0] _GEN_35; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@246.4]
  wire [7:0] _GEN_36; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@248.4]
  wire [7:0] _GEN_37; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@250.4]
  wire [7:0] _GEN_38; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@252.4]
  wire [7:0] _GEN_39; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@254.4]
  wire [7:0] _GEN_40; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@256.4]
  wire [7:0] _GEN_41; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@258.4]
  wire [7:0] _GEN_42; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@260.4]
  wire [7:0] _GEN_43; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@262.4]
  wire [7:0] _GEN_44; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@264.4]
  wire [7:0] _GEN_45; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@266.4]
  wire [7:0] _GEN_46; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@268.4]
  wire [7:0] _GEN_47; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@270.4]
  wire [7:0] _GEN_48; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@272.4]
  wire [7:0] _GEN_49; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@274.4]
  wire [7:0] _GEN_50; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@276.4]
  wire [7:0] _GEN_51; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@278.4]
  wire [7:0] _GEN_52; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@280.4]
  wire [7:0] _GEN_53; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@282.4]
  wire [7:0] _GEN_54; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@284.4]
  wire [7:0] _GEN_55; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@286.4]
  wire [7:0] _GEN_56; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@288.4]
  wire [7:0] _GEN_57; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@290.4]
  wire [7:0] _GEN_58; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@292.4]
  wire [7:0] _GEN_59; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@294.4]
  wire [7:0] _GEN_60; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@296.4]
  wire [7:0] _GEN_61; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@298.4]
  wire [7:0] _GEN_62; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@300.4]
  wire [7:0] _GEN_63; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@302.4]
  wire [7:0] _GEN_64; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@304.4]
  wire [7:0] _GEN_65; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@306.4]
  wire [7:0] _GEN_66; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@308.4]
  wire [7:0] _GEN_67; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@310.4]
  wire [7:0] _GEN_68; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@312.4]
  wire [7:0] _GEN_69; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@314.4]
  wire [7:0] _GEN_70; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@316.4]
  wire [7:0] _GEN_71; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@318.4]
  wire [7:0] _GEN_72; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@320.4]
  wire [7:0] _GEN_73; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@322.4]
  wire [7:0] _GEN_74; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@324.4]
  wire [7:0] _GEN_75; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@326.4]
  wire [7:0] _GEN_76; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@328.4]
  wire [7:0] _GEN_77; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@330.4]
  wire [7:0] _GEN_78; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@332.4]
  wire [7:0] _GEN_79; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@334.4]
  wire [7:0] _GEN_80; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@336.4]
  wire [7:0] _GEN_81; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@338.4]
  wire [7:0] _GEN_82; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@340.4]
  wire [7:0] _GEN_83; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@342.4]
  wire [7:0] _GEN_84; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@344.4]
  wire [7:0] _GEN_85; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@346.4]
  wire [7:0] _GEN_86; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@348.4]
  wire [7:0] _GEN_87; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@350.4]
  wire [7:0] _GEN_88; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@352.4]
  wire [7:0] _GEN_89; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@354.4]
  wire [7:0] _GEN_90; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@356.4]
  wire [7:0] _GEN_91; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@358.4]
  wire [7:0] _GEN_92; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@360.4]
  wire [7:0] _GEN_93; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@362.4]
  wire [7:0] _GEN_94; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@364.4]
  wire [7:0] _GEN_95; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@366.4]
  wire [7:0] _GEN_96; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@368.4]
  wire [7:0] _GEN_97; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@370.4]
  wire [7:0] _GEN_98; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@372.4]
  wire [7:0] _GEN_99; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@374.4]
  wire [7:0] _GEN_100; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@376.4]
  wire [7:0] _GEN_101; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@378.4]
  wire [7:0] _GEN_102; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@380.4]
  wire [7:0] _GEN_103; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@382.4]
  wire [7:0] _GEN_104; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@384.4]
  wire [7:0] _GEN_105; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@386.4]
  wire [7:0] _GEN_106; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@388.4]
  wire [7:0] _GEN_107; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@390.4]
  wire [7:0] _GEN_108; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@392.4]
  wire [7:0] _GEN_109; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@394.4]
  wire [7:0] _GEN_110; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@396.4]
  wire [7:0] _GEN_111; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@398.4]
  wire [7:0] _GEN_112; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@400.4]
  wire [7:0] _GEN_113; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@402.4]
  wire [7:0] _GEN_114; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@404.4]
  wire [7:0] _GEN_115; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@406.4]
  wire [7:0] _GEN_116; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@408.4]
  wire [7:0] _GEN_117; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@410.4]
  wire [7:0] _GEN_118; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@412.4]
  wire [7:0] _GEN_119; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@414.4]
  wire [7:0] _GEN_120; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@416.4]
  wire [7:0] _GEN_121; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@418.4]
  wire [7:0] _GEN_122; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@420.4]
  wire [7:0] _GEN_123; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@422.4]
  wire [7:0] _GEN_124; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@424.4]
  wire [7:0] _GEN_125; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@426.4]
  wire [7:0] _GEN_126; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@428.4]
  wire [7:0] _GEN_127; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@430.4]
  wire [7:0] _GEN_128; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@432.4]
  wire [7:0] _GEN_129; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@434.4]
  wire [7:0] _GEN_130; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@436.4]
  wire [7:0] _GEN_131; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@438.4]
  wire [7:0] _GEN_132; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@440.4]
  wire [7:0] _GEN_133; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@442.4]
  wire [7:0] _GEN_134; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@444.4]
  wire [7:0] _GEN_135; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@446.4]
  wire [7:0] _GEN_136; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@448.4]
  wire [7:0] _GEN_137; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@450.4]
  wire [7:0] _GEN_138; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@452.4]
  wire [7:0] _GEN_139; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@454.4]
  wire [7:0] _GEN_140; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@456.4]
  wire [7:0] _GEN_141; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@458.4]
  wire [7:0] _GEN_142; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@460.4]
  wire [7:0] _GEN_143; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@462.4]
  wire [7:0] _GEN_144; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@464.4]
  wire [7:0] _GEN_145; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@466.4]
  wire [7:0] _GEN_146; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@468.4]
  wire [7:0] _GEN_147; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@470.4]
  wire [7:0] _GEN_148; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@472.4]
  wire [7:0] _GEN_149; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@474.4]
  wire [7:0] _GEN_150; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@476.4]
  wire [7:0] _GEN_151; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@478.4]
  wire [7:0] _GEN_152; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@480.4]
  wire [7:0] _GEN_153; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@482.4]
  wire [7:0] _GEN_154; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@484.4]
  wire [7:0] _GEN_155; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@486.4]
  wire [7:0] _GEN_156; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@488.4]
  wire [7:0] _GEN_157; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@490.4]
  wire [7:0] _GEN_158; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@492.4]
  wire [7:0] _GEN_159; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@494.4]
  wire [7:0] _GEN_160; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@496.4]
  wire [7:0] _GEN_161; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@498.4]
  wire [7:0] _GEN_162; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@500.4]
  wire [7:0] _GEN_163; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@502.4]
  wire [7:0] _GEN_164; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@504.4]
  wire [7:0] _GEN_165; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@506.4]
  wire [7:0] _GEN_166; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@508.4]
  wire [7:0] _GEN_167; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@510.4]
  wire [7:0] _GEN_168; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@512.4]
  wire [7:0] _GEN_169; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@514.4]
  wire [7:0] _GEN_170; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@516.4]
  wire [7:0] _GEN_171; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@518.4]
  wire [7:0] _GEN_172; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@520.4]
  wire [7:0] _GEN_173; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@522.4]
  wire [7:0] _GEN_174; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@524.4]
  wire [7:0] _GEN_175; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@526.4]
  wire [7:0] _GEN_176; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@528.4]
  wire [7:0] _GEN_177; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@530.4]
  wire [7:0] _GEN_178; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@532.4]
  wire [7:0] _GEN_179; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@534.4]
  wire [7:0] _GEN_180; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@536.4]
  wire [7:0] _GEN_181; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@538.4]
  wire [7:0] _GEN_182; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@540.4]
  wire [7:0] _GEN_183; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@542.4]
  wire [7:0] _GEN_184; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@544.4]
  wire [7:0] _GEN_185; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@546.4]
  wire [7:0] _GEN_186; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@548.4]
  wire [7:0] _GEN_187; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@550.4]
  wire [7:0] _GEN_188; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@552.4]
  wire [7:0] _GEN_189; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@554.4]
  wire [7:0] _GEN_190; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@556.4]
  wire [7:0] _GEN_191; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@558.4]
  wire [7:0] _GEN_192; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@560.4]
  wire [7:0] _GEN_193; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@562.4]
  wire [7:0] _GEN_194; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@564.4]
  wire [7:0] _GEN_195; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@566.4]
  wire [7:0] _GEN_196; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@568.4]
  wire [7:0] _GEN_197; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@570.4]
  wire [7:0] _GEN_198; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@572.4]
  wire [7:0] _GEN_199; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@574.4]
  wire [7:0] _GEN_200; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@576.4]
  wire [7:0] _GEN_201; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@578.4]
  wire [7:0] _GEN_202; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@580.4]
  wire [7:0] _GEN_203; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@582.4]
  wire [7:0] _GEN_204; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@584.4]
  wire [7:0] _GEN_205; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@586.4]
  wire [7:0] _GEN_206; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@588.4]
  wire [7:0] _GEN_207; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@590.4]
  wire [7:0] _GEN_208; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@592.4]
  wire [7:0] _GEN_209; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@594.4]
  wire [7:0] _GEN_210; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@596.4]
  wire [7:0] _GEN_211; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@598.4]
  wire [7:0] _GEN_212; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@600.4]
  wire [7:0] _GEN_213; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@602.4]
  wire [7:0] _GEN_214; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@604.4]
  wire [7:0] _GEN_215; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@606.4]
  wire [7:0] _GEN_216; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@608.4]
  wire [7:0] _GEN_217; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@610.4]
  wire [7:0] _GEN_218; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@612.4]
  wire [7:0] _GEN_219; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@614.4]
  wire [7:0] _GEN_220; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@616.4]
  wire [7:0] _GEN_221; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@618.4]
  wire [7:0] _GEN_222; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@620.4]
  wire [7:0] _GEN_223; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@622.4]
  wire [7:0] _GEN_224; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@624.4]
  wire [7:0] _GEN_225; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@626.4]
  wire [7:0] _GEN_226; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@628.4]
  wire [7:0] _GEN_227; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@630.4]
  wire [7:0] _GEN_228; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@632.4]
  wire [7:0] _GEN_229; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@634.4]
  wire [7:0] _GEN_230; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@636.4]
  wire [7:0] _GEN_231; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@638.4]
  wire [7:0] _GEN_232; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@640.4]
  wire [7:0] _GEN_233; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@642.4]
  wire [7:0] _GEN_234; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@644.4]
  wire [7:0] _GEN_235; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@646.4]
  wire [7:0] _GEN_236; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@648.4]
  wire [7:0] _GEN_237; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@650.4]
  wire [7:0] _GEN_238; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@652.4]
  wire [7:0] _GEN_239; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@654.4]
  wire [7:0] _GEN_240; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@656.4]
  wire [7:0] _GEN_241; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@658.4]
  wire [7:0] _GEN_242; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@660.4]
  wire [7:0] _GEN_243; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@662.4]
  wire [7:0] _GEN_244; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@664.4]
  wire [7:0] _GEN_245; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@666.4]
  wire [7:0] _GEN_246; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@668.4]
  wire [7:0] _GEN_247; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@670.4]
  wire [7:0] _GEN_248; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@672.4]
  wire [7:0] _GEN_249; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@674.4]
  wire [7:0] _GEN_250; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@676.4]
  wire [7:0] _GEN_251; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@678.4]
  wire [7:0] _GEN_252; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@680.4]
  wire [7:0] _GEN_253; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@682.4]
  wire [7:0] _GEN_254; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@684.4]
  wire [7:0] _GEN_255; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@686.4]
  assign _GEN_256 = {{7'd0}, io_dataa}; // @[Mult4x4.scala 25:30:@448.4:Mult8x8.lo.fir@173.4]
  assign _T_266 = _GEN_256 << 3'h4; // @[Mult4x4.scala 25:30:@448.4:Mult8x8.lo.fir@173.4]
  assign _GEN_257 = {{7'd0}, io_datab}; // @[Mult4x4.scala 25:38:@449.4:Mult8x8.lo.fir@174.4]
  assign _T_267 = _T_266 | _GEN_257; // @[Mult4x4.scala 25:38:@449.4:Mult8x8.lo.fir@174.4]
  assign _T_269 = _T_267[7:0]; // @[:@450.4:Mult8x8.lo.fir@175.4]
  assign _GEN_17 = 8'h11 == _T_269 ? 8'h1 : 8'h0; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@210.4]
  assign _GEN_18 = 8'h12 == _T_269 ? 8'h2 : _GEN_17; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@212.4]
  assign _GEN_19 = 8'h13 == _T_269 ? 8'h3 : _GEN_18; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@214.4]
  assign _GEN_20 = 8'h14 == _T_269 ? 8'h4 : _GEN_19; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@216.4]
  assign _GEN_21 = 8'h15 == _T_269 ? 8'h5 : _GEN_20; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@218.4]
  assign _GEN_22 = 8'h16 == _T_269 ? 8'h6 : _GEN_21; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@220.4]
  assign _GEN_23 = 8'h17 == _T_269 ? 8'h7 : _GEN_22; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@222.4]
  assign _GEN_24 = 8'h18 == _T_269 ? 8'h8 : _GEN_23; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@224.4]
  assign _GEN_25 = 8'h19 == _T_269 ? 8'h9 : _GEN_24; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@226.4]
  assign _GEN_26 = 8'h1a == _T_269 ? 8'ha : _GEN_25; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@228.4]
  assign _GEN_27 = 8'h1b == _T_269 ? 8'hb : _GEN_26; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@230.4]
  assign _GEN_28 = 8'h1c == _T_269 ? 8'hc : _GEN_27; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@232.4]
  assign _GEN_29 = 8'h1d == _T_269 ? 8'hd : _GEN_28; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@234.4]
  assign _GEN_30 = 8'h1e == _T_269 ? 8'he : _GEN_29; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@236.4]
  assign _GEN_31 = 8'h1f == _T_269 ? 8'hf : _GEN_30; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@238.4]
  assign _GEN_32 = 8'h20 == _T_269 ? 8'h0 : _GEN_31; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@240.4]
  assign _GEN_33 = 8'h21 == _T_269 ? 8'h2 : _GEN_32; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@242.4]
  assign _GEN_34 = 8'h22 == _T_269 ? 8'h4 : _GEN_33; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@244.4]
  assign _GEN_35 = 8'h23 == _T_269 ? 8'h6 : _GEN_34; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@246.4]
  assign _GEN_36 = 8'h24 == _T_269 ? 8'h8 : _GEN_35; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@248.4]
  assign _GEN_37 = 8'h25 == _T_269 ? 8'ha : _GEN_36; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@250.4]
  assign _GEN_38 = 8'h26 == _T_269 ? 8'hc : _GEN_37; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@252.4]
  assign _GEN_39 = 8'h27 == _T_269 ? 8'he : _GEN_38; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@254.4]
  assign _GEN_40 = 8'h28 == _T_269 ? 8'h10 : _GEN_39; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@256.4]
  assign _GEN_41 = 8'h29 == _T_269 ? 8'h12 : _GEN_40; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@258.4]
  assign _GEN_42 = 8'h2a == _T_269 ? 8'h14 : _GEN_41; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@260.4]
  assign _GEN_43 = 8'h2b == _T_269 ? 8'h16 : _GEN_42; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@262.4]
  assign _GEN_44 = 8'h2c == _T_269 ? 8'h18 : _GEN_43; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@264.4]
  assign _GEN_45 = 8'h2d == _T_269 ? 8'h1a : _GEN_44; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@266.4]
  assign _GEN_46 = 8'h2e == _T_269 ? 8'h1c : _GEN_45; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@268.4]
  assign _GEN_47 = 8'h2f == _T_269 ? 8'h1e : _GEN_46; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@270.4]
  assign _GEN_48 = 8'h30 == _T_269 ? 8'h0 : _GEN_47; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@272.4]
  assign _GEN_49 = 8'h31 == _T_269 ? 8'h3 : _GEN_48; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@274.4]
  assign _GEN_50 = 8'h32 == _T_269 ? 8'h6 : _GEN_49; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@276.4]
  assign _GEN_51 = 8'h33 == _T_269 ? 8'h9 : _GEN_50; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@278.4]
  assign _GEN_52 = 8'h34 == _T_269 ? 8'hc : _GEN_51; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@280.4]
  assign _GEN_53 = 8'h35 == _T_269 ? 8'hf : _GEN_52; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@282.4]
  assign _GEN_54 = 8'h36 == _T_269 ? 8'h12 : _GEN_53; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@284.4]
  assign _GEN_55 = 8'h37 == _T_269 ? 8'h15 : _GEN_54; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@286.4]
  assign _GEN_56 = 8'h38 == _T_269 ? 8'h18 : _GEN_55; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@288.4]
  assign _GEN_57 = 8'h39 == _T_269 ? 8'h1b : _GEN_56; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@290.4]
  assign _GEN_58 = 8'h3a == _T_269 ? 8'h1e : _GEN_57; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@292.4]
  assign _GEN_59 = 8'h3b == _T_269 ? 8'h21 : _GEN_58; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@294.4]
  assign _GEN_60 = 8'h3c == _T_269 ? 8'h24 : _GEN_59; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@296.4]
  assign _GEN_61 = 8'h3d == _T_269 ? 8'h27 : _GEN_60; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@298.4]
  assign _GEN_62 = 8'h3e == _T_269 ? 8'h2a : _GEN_61; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@300.4]
  assign _GEN_63 = 8'h3f == _T_269 ? 8'h2d : _GEN_62; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@302.4]
  assign _GEN_64 = 8'h40 == _T_269 ? 8'h0 : _GEN_63; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@304.4]
  assign _GEN_65 = 8'h41 == _T_269 ? 8'h4 : _GEN_64; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@306.4]
  assign _GEN_66 = 8'h42 == _T_269 ? 8'h8 : _GEN_65; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@308.4]
  assign _GEN_67 = 8'h43 == _T_269 ? 8'hc : _GEN_66; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@310.4]
  assign _GEN_68 = 8'h44 == _T_269 ? 8'h10 : _GEN_67; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@312.4]
  assign _GEN_69 = 8'h45 == _T_269 ? 8'h14 : _GEN_68; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@314.4]
  assign _GEN_70 = 8'h46 == _T_269 ? 8'h18 : _GEN_69; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@316.4]
  assign _GEN_71 = 8'h47 == _T_269 ? 8'h1c : _GEN_70; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@318.4]
  assign _GEN_72 = 8'h48 == _T_269 ? 8'h20 : _GEN_71; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@320.4]
  assign _GEN_73 = 8'h49 == _T_269 ? 8'h24 : _GEN_72; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@322.4]
  assign _GEN_74 = 8'h4a == _T_269 ? 8'h28 : _GEN_73; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@324.4]
  assign _GEN_75 = 8'h4b == _T_269 ? 8'h2c : _GEN_74; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@326.4]
  assign _GEN_76 = 8'h4c == _T_269 ? 8'h30 : _GEN_75; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@328.4]
  assign _GEN_77 = 8'h4d == _T_269 ? 8'h34 : _GEN_76; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@330.4]
  assign _GEN_78 = 8'h4e == _T_269 ? 8'h38 : _GEN_77; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@332.4]
  assign _GEN_79 = 8'h4f == _T_269 ? 8'h3c : _GEN_78; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@334.4]
  assign _GEN_80 = 8'h50 == _T_269 ? 8'h0 : _GEN_79; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@336.4]
  assign _GEN_81 = 8'h51 == _T_269 ? 8'h5 : _GEN_80; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@338.4]
  assign _GEN_82 = 8'h52 == _T_269 ? 8'ha : _GEN_81; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@340.4]
  assign _GEN_83 = 8'h53 == _T_269 ? 8'hf : _GEN_82; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@342.4]
  assign _GEN_84 = 8'h54 == _T_269 ? 8'h14 : _GEN_83; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@344.4]
  assign _GEN_85 = 8'h55 == _T_269 ? 8'h19 : _GEN_84; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@346.4]
  assign _GEN_86 = 8'h56 == _T_269 ? 8'h1e : _GEN_85; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@348.4]
  assign _GEN_87 = 8'h57 == _T_269 ? 8'h23 : _GEN_86; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@350.4]
  assign _GEN_88 = 8'h58 == _T_269 ? 8'h28 : _GEN_87; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@352.4]
  assign _GEN_89 = 8'h59 == _T_269 ? 8'h2d : _GEN_88; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@354.4]
  assign _GEN_90 = 8'h5a == _T_269 ? 8'h32 : _GEN_89; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@356.4]
  assign _GEN_91 = 8'h5b == _T_269 ? 8'h37 : _GEN_90; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@358.4]
  assign _GEN_92 = 8'h5c == _T_269 ? 8'h3c : _GEN_91; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@360.4]
  assign _GEN_93 = 8'h5d == _T_269 ? 8'h41 : _GEN_92; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@362.4]
  assign _GEN_94 = 8'h5e == _T_269 ? 8'h46 : _GEN_93; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@364.4]
  assign _GEN_95 = 8'h5f == _T_269 ? 8'h4b : _GEN_94; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@366.4]
  assign _GEN_96 = 8'h60 == _T_269 ? 8'h0 : _GEN_95; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@368.4]
  assign _GEN_97 = 8'h61 == _T_269 ? 8'h6 : _GEN_96; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@370.4]
  assign _GEN_98 = 8'h62 == _T_269 ? 8'hc : _GEN_97; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@372.4]
  assign _GEN_99 = 8'h63 == _T_269 ? 8'h12 : _GEN_98; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@374.4]
  assign _GEN_100 = 8'h64 == _T_269 ? 8'h18 : _GEN_99; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@376.4]
  assign _GEN_101 = 8'h65 == _T_269 ? 8'h1e : _GEN_100; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@378.4]
  assign _GEN_102 = 8'h66 == _T_269 ? 8'h24 : _GEN_101; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@380.4]
  assign _GEN_103 = 8'h67 == _T_269 ? 8'h2a : _GEN_102; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@382.4]
  assign _GEN_104 = 8'h68 == _T_269 ? 8'h30 : _GEN_103; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@384.4]
  assign _GEN_105 = 8'h69 == _T_269 ? 8'h36 : _GEN_104; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@386.4]
  assign _GEN_106 = 8'h6a == _T_269 ? 8'h3c : _GEN_105; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@388.4]
  assign _GEN_107 = 8'h6b == _T_269 ? 8'h42 : _GEN_106; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@390.4]
  assign _GEN_108 = 8'h6c == _T_269 ? 8'h48 : _GEN_107; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@392.4]
  assign _GEN_109 = 8'h6d == _T_269 ? 8'h4e : _GEN_108; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@394.4]
  assign _GEN_110 = 8'h6e == _T_269 ? 8'h54 : _GEN_109; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@396.4]
  assign _GEN_111 = 8'h6f == _T_269 ? 8'h5a : _GEN_110; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@398.4]
  assign _GEN_112 = 8'h70 == _T_269 ? 8'h0 : _GEN_111; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@400.4]
  assign _GEN_113 = 8'h71 == _T_269 ? 8'h7 : _GEN_112; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@402.4]
  assign _GEN_114 = 8'h72 == _T_269 ? 8'he : _GEN_113; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@404.4]
  assign _GEN_115 = 8'h73 == _T_269 ? 8'h15 : _GEN_114; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@406.4]
  assign _GEN_116 = 8'h74 == _T_269 ? 8'h1c : _GEN_115; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@408.4]
  assign _GEN_117 = 8'h75 == _T_269 ? 8'h23 : _GEN_116; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@410.4]
  assign _GEN_118 = 8'h76 == _T_269 ? 8'h2a : _GEN_117; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@412.4]
  assign _GEN_119 = 8'h77 == _T_269 ? 8'h31 : _GEN_118; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@414.4]
  assign _GEN_120 = 8'h78 == _T_269 ? 8'h38 : _GEN_119; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@416.4]
  assign _GEN_121 = 8'h79 == _T_269 ? 8'h3f : _GEN_120; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@418.4]
  assign _GEN_122 = 8'h7a == _T_269 ? 8'h46 : _GEN_121; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@420.4]
  assign _GEN_123 = 8'h7b == _T_269 ? 8'h4d : _GEN_122; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@422.4]
  assign _GEN_124 = 8'h7c == _T_269 ? 8'h54 : _GEN_123; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@424.4]
  assign _GEN_125 = 8'h7d == _T_269 ? 8'h5b : _GEN_124; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@426.4]
  assign _GEN_126 = 8'h7e == _T_269 ? 8'h62 : _GEN_125; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@428.4]
  assign _GEN_127 = 8'h7f == _T_269 ? 8'h69 : _GEN_126; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@430.4]
  assign _GEN_128 = 8'h80 == _T_269 ? 8'h0 : _GEN_127; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@432.4]
  assign _GEN_129 = 8'h81 == _T_269 ? 8'h8 : _GEN_128; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@434.4]
  assign _GEN_130 = 8'h82 == _T_269 ? 8'h10 : _GEN_129; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@436.4]
  assign _GEN_131 = 8'h83 == _T_269 ? 8'h18 : _GEN_130; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@438.4]
  assign _GEN_132 = 8'h84 == _T_269 ? 8'h20 : _GEN_131; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@440.4]
  assign _GEN_133 = 8'h85 == _T_269 ? 8'h28 : _GEN_132; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@442.4]
  assign _GEN_134 = 8'h86 == _T_269 ? 8'h30 : _GEN_133; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@444.4]
  assign _GEN_135 = 8'h87 == _T_269 ? 8'h38 : _GEN_134; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@446.4]
  assign _GEN_136 = 8'h88 == _T_269 ? 8'h40 : _GEN_135; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@448.4]
  assign _GEN_137 = 8'h89 == _T_269 ? 8'h48 : _GEN_136; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@450.4]
  assign _GEN_138 = 8'h8a == _T_269 ? 8'h50 : _GEN_137; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@452.4]
  assign _GEN_139 = 8'h8b == _T_269 ? 8'h58 : _GEN_138; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@454.4]
  assign _GEN_140 = 8'h8c == _T_269 ? 8'h60 : _GEN_139; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@456.4]
  assign _GEN_141 = 8'h8d == _T_269 ? 8'h68 : _GEN_140; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@458.4]
  assign _GEN_142 = 8'h8e == _T_269 ? 8'h70 : _GEN_141; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@460.4]
  assign _GEN_143 = 8'h8f == _T_269 ? 8'h78 : _GEN_142; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@462.4]
  assign _GEN_144 = 8'h90 == _T_269 ? 8'h0 : _GEN_143; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@464.4]
  assign _GEN_145 = 8'h91 == _T_269 ? 8'h9 : _GEN_144; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@466.4]
  assign _GEN_146 = 8'h92 == _T_269 ? 8'h12 : _GEN_145; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@468.4]
  assign _GEN_147 = 8'h93 == _T_269 ? 8'h1b : _GEN_146; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@470.4]
  assign _GEN_148 = 8'h94 == _T_269 ? 8'h24 : _GEN_147; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@472.4]
  assign _GEN_149 = 8'h95 == _T_269 ? 8'h2d : _GEN_148; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@474.4]
  assign _GEN_150 = 8'h96 == _T_269 ? 8'h36 : _GEN_149; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@476.4]
  assign _GEN_151 = 8'h97 == _T_269 ? 8'h3f : _GEN_150; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@478.4]
  assign _GEN_152 = 8'h98 == _T_269 ? 8'h48 : _GEN_151; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@480.4]
  assign _GEN_153 = 8'h99 == _T_269 ? 8'h51 : _GEN_152; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@482.4]
  assign _GEN_154 = 8'h9a == _T_269 ? 8'h5a : _GEN_153; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@484.4]
  assign _GEN_155 = 8'h9b == _T_269 ? 8'h63 : _GEN_154; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@486.4]
  assign _GEN_156 = 8'h9c == _T_269 ? 8'h6c : _GEN_155; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@488.4]
  assign _GEN_157 = 8'h9d == _T_269 ? 8'h75 : _GEN_156; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@490.4]
  assign _GEN_158 = 8'h9e == _T_269 ? 8'h7e : _GEN_157; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@492.4]
  assign _GEN_159 = 8'h9f == _T_269 ? 8'h87 : _GEN_158; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@494.4]
  assign _GEN_160 = 8'ha0 == _T_269 ? 8'h0 : _GEN_159; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@496.4]
  assign _GEN_161 = 8'ha1 == _T_269 ? 8'ha : _GEN_160; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@498.4]
  assign _GEN_162 = 8'ha2 == _T_269 ? 8'h14 : _GEN_161; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@500.4]
  assign _GEN_163 = 8'ha3 == _T_269 ? 8'h1e : _GEN_162; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@502.4]
  assign _GEN_164 = 8'ha4 == _T_269 ? 8'h28 : _GEN_163; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@504.4]
  assign _GEN_165 = 8'ha5 == _T_269 ? 8'h32 : _GEN_164; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@506.4]
  assign _GEN_166 = 8'ha6 == _T_269 ? 8'h3c : _GEN_165; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@508.4]
  assign _GEN_167 = 8'ha7 == _T_269 ? 8'h46 : _GEN_166; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@510.4]
  assign _GEN_168 = 8'ha8 == _T_269 ? 8'h50 : _GEN_167; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@512.4]
  assign _GEN_169 = 8'ha9 == _T_269 ? 8'h5a : _GEN_168; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@514.4]
  assign _GEN_170 = 8'haa == _T_269 ? 8'h64 : _GEN_169; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@516.4]
  assign _GEN_171 = 8'hab == _T_269 ? 8'h6e : _GEN_170; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@518.4]
  assign _GEN_172 = 8'hac == _T_269 ? 8'h78 : _GEN_171; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@520.4]
  assign _GEN_173 = 8'had == _T_269 ? 8'h82 : _GEN_172; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@522.4]
  assign _GEN_174 = 8'hae == _T_269 ? 8'h8c : _GEN_173; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@524.4]
  assign _GEN_175 = 8'haf == _T_269 ? 8'h96 : _GEN_174; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@526.4]
  assign _GEN_176 = 8'hb0 == _T_269 ? 8'h0 : _GEN_175; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@528.4]
  assign _GEN_177 = 8'hb1 == _T_269 ? 8'hb : _GEN_176; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@530.4]
  assign _GEN_178 = 8'hb2 == _T_269 ? 8'h16 : _GEN_177; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@532.4]
  assign _GEN_179 = 8'hb3 == _T_269 ? 8'h21 : _GEN_178; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@534.4]
  assign _GEN_180 = 8'hb4 == _T_269 ? 8'h2c : _GEN_179; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@536.4]
  assign _GEN_181 = 8'hb5 == _T_269 ? 8'h37 : _GEN_180; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@538.4]
  assign _GEN_182 = 8'hb6 == _T_269 ? 8'h42 : _GEN_181; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@540.4]
  assign _GEN_183 = 8'hb7 == _T_269 ? 8'h4d : _GEN_182; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@542.4]
  assign _GEN_184 = 8'hb8 == _T_269 ? 8'h58 : _GEN_183; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@544.4]
  assign _GEN_185 = 8'hb9 == _T_269 ? 8'h63 : _GEN_184; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@546.4]
  assign _GEN_186 = 8'hba == _T_269 ? 8'h6e : _GEN_185; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@548.4]
  assign _GEN_187 = 8'hbb == _T_269 ? 8'h79 : _GEN_186; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@550.4]
  assign _GEN_188 = 8'hbc == _T_269 ? 8'h84 : _GEN_187; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@552.4]
  assign _GEN_189 = 8'hbd == _T_269 ? 8'h8f : _GEN_188; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@554.4]
  assign _GEN_190 = 8'hbe == _T_269 ? 8'h9a : _GEN_189; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@556.4]
  assign _GEN_191 = 8'hbf == _T_269 ? 8'ha5 : _GEN_190; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@558.4]
  assign _GEN_192 = 8'hc0 == _T_269 ? 8'h0 : _GEN_191; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@560.4]
  assign _GEN_193 = 8'hc1 == _T_269 ? 8'hc : _GEN_192; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@562.4]
  assign _GEN_194 = 8'hc2 == _T_269 ? 8'h18 : _GEN_193; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@564.4]
  assign _GEN_195 = 8'hc3 == _T_269 ? 8'h24 : _GEN_194; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@566.4]
  assign _GEN_196 = 8'hc4 == _T_269 ? 8'h30 : _GEN_195; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@568.4]
  assign _GEN_197 = 8'hc5 == _T_269 ? 8'h3c : _GEN_196; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@570.4]
  assign _GEN_198 = 8'hc6 == _T_269 ? 8'h48 : _GEN_197; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@572.4]
  assign _GEN_199 = 8'hc7 == _T_269 ? 8'h54 : _GEN_198; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@574.4]
  assign _GEN_200 = 8'hc8 == _T_269 ? 8'h60 : _GEN_199; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@576.4]
  assign _GEN_201 = 8'hc9 == _T_269 ? 8'h6c : _GEN_200; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@578.4]
  assign _GEN_202 = 8'hca == _T_269 ? 8'h78 : _GEN_201; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@580.4]
  assign _GEN_203 = 8'hcb == _T_269 ? 8'h84 : _GEN_202; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@582.4]
  assign _GEN_204 = 8'hcc == _T_269 ? 8'h90 : _GEN_203; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@584.4]
  assign _GEN_205 = 8'hcd == _T_269 ? 8'h9c : _GEN_204; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@586.4]
  assign _GEN_206 = 8'hce == _T_269 ? 8'ha8 : _GEN_205; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@588.4]
  assign _GEN_207 = 8'hcf == _T_269 ? 8'hb4 : _GEN_206; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@590.4]
  assign _GEN_208 = 8'hd0 == _T_269 ? 8'h0 : _GEN_207; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@592.4]
  assign _GEN_209 = 8'hd1 == _T_269 ? 8'hd : _GEN_208; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@594.4]
  assign _GEN_210 = 8'hd2 == _T_269 ? 8'h1a : _GEN_209; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@596.4]
  assign _GEN_211 = 8'hd3 == _T_269 ? 8'h27 : _GEN_210; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@598.4]
  assign _GEN_212 = 8'hd4 == _T_269 ? 8'h34 : _GEN_211; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@600.4]
  assign _GEN_213 = 8'hd5 == _T_269 ? 8'h41 : _GEN_212; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@602.4]
  assign _GEN_214 = 8'hd6 == _T_269 ? 8'h4e : _GEN_213; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@604.4]
  assign _GEN_215 = 8'hd7 == _T_269 ? 8'h5b : _GEN_214; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@606.4]
  assign _GEN_216 = 8'hd8 == _T_269 ? 8'h68 : _GEN_215; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@608.4]
  assign _GEN_217 = 8'hd9 == _T_269 ? 8'h75 : _GEN_216; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@610.4]
  assign _GEN_218 = 8'hda == _T_269 ? 8'h82 : _GEN_217; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@612.4]
  assign _GEN_219 = 8'hdb == _T_269 ? 8'h8f : _GEN_218; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@614.4]
  assign _GEN_220 = 8'hdc == _T_269 ? 8'h9c : _GEN_219; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@616.4]
  assign _GEN_221 = 8'hdd == _T_269 ? 8'ha9 : _GEN_220; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@618.4]
  assign _GEN_222 = 8'hde == _T_269 ? 8'hb6 : _GEN_221; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@620.4]
  assign _GEN_223 = 8'hdf == _T_269 ? 8'hc3 : _GEN_222; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@622.4]
  assign _GEN_224 = 8'he0 == _T_269 ? 8'h0 : _GEN_223; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@624.4]
  assign _GEN_225 = 8'he1 == _T_269 ? 8'he : _GEN_224; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@626.4]
  assign _GEN_226 = 8'he2 == _T_269 ? 8'h1c : _GEN_225; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@628.4]
  assign _GEN_227 = 8'he3 == _T_269 ? 8'h2a : _GEN_226; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@630.4]
  assign _GEN_228 = 8'he4 == _T_269 ? 8'h38 : _GEN_227; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@632.4]
  assign _GEN_229 = 8'he5 == _T_269 ? 8'h46 : _GEN_228; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@634.4]
  assign _GEN_230 = 8'he6 == _T_269 ? 8'h54 : _GEN_229; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@636.4]
  assign _GEN_231 = 8'he7 == _T_269 ? 8'h62 : _GEN_230; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@638.4]
  assign _GEN_232 = 8'he8 == _T_269 ? 8'h70 : _GEN_231; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@640.4]
  assign _GEN_233 = 8'he9 == _T_269 ? 8'h7e : _GEN_232; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@642.4]
  assign _GEN_234 = 8'hea == _T_269 ? 8'h8c : _GEN_233; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@644.4]
  assign _GEN_235 = 8'heb == _T_269 ? 8'h9a : _GEN_234; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@646.4]
  assign _GEN_236 = 8'hec == _T_269 ? 8'ha8 : _GEN_235; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@648.4]
  assign _GEN_237 = 8'hed == _T_269 ? 8'hb6 : _GEN_236; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@650.4]
  assign _GEN_238 = 8'hee == _T_269 ? 8'hc4 : _GEN_237; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@652.4]
  assign _GEN_239 = 8'hef == _T_269 ? 8'hd2 : _GEN_238; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@654.4]
  assign _GEN_240 = 8'hf0 == _T_269 ? 8'h0 : _GEN_239; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@656.4]
  assign _GEN_241 = 8'hf1 == _T_269 ? 8'hf : _GEN_240; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@658.4]
  assign _GEN_242 = 8'hf2 == _T_269 ? 8'h1e : _GEN_241; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@660.4]
  assign _GEN_243 = 8'hf3 == _T_269 ? 8'h2d : _GEN_242; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@662.4]
  assign _GEN_244 = 8'hf4 == _T_269 ? 8'h3c : _GEN_243; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@664.4]
  assign _GEN_245 = 8'hf5 == _T_269 ? 8'h4b : _GEN_244; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@666.4]
  assign _GEN_246 = 8'hf6 == _T_269 ? 8'h5a : _GEN_245; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@668.4]
  assign _GEN_247 = 8'hf7 == _T_269 ? 8'h69 : _GEN_246; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@670.4]
  assign _GEN_248 = 8'hf8 == _T_269 ? 8'h78 : _GEN_247; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@672.4]
  assign _GEN_249 = 8'hf9 == _T_269 ? 8'h87 : _GEN_248; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@674.4]
  assign _GEN_250 = 8'hfa == _T_269 ? 8'h96 : _GEN_249; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@676.4]
  assign _GEN_251 = 8'hfb == _T_269 ? 8'ha5 : _GEN_250; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@678.4]
  assign _GEN_252 = 8'hfc == _T_269 ? 8'hb4 : _GEN_251; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@680.4]
  assign _GEN_253 = 8'hfd == _T_269 ? 8'hc3 : _GEN_252; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@682.4]
  assign _GEN_254 = 8'hfe == _T_269 ? 8'hd2 : _GEN_253; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@684.4]
  assign _GEN_255 = 8'hff == _T_269 ? 8'he1 : _GEN_254; // @[Mult4x4.scala 25:13:@451.4:Mult8x8.lo.fir@686.4]
  assign io_result = _GEN_255;
endmodule
module Adder( // @[:@453.2:Mult8x8.lo.fir@690.2]
  input  [15:0] io_a, // @[:@456.4:Mult8x8.lo.fir@693.4]
  input  [15:0] io_b, // @[:@456.4:Mult8x8.lo.fir@694.4]
  output [15:0] io_sum // @[:@456.4:Mult8x8.lo.fir@695.4]
);
  wire [16:0] _T_5; // @[Adder.scala 17:18:@458.4:Mult8x8.lo.fir@697.4]
  wire [15:0] _T_6; // @[Adder.scala 17:18:@459.4:Mult8x8.lo.fir@698.4]
  assign _T_5 = io_a + io_b; // @[Adder.scala 17:18:@458.4:Mult8x8.lo.fir@697.4]
  assign _T_6 = _T_5[15:0]; // @[Adder.scala 17:18:@459.4:Mult8x8.lo.fir@698.4]
  assign io_sum = _T_6;
endmodule
module Shifter( // @[:@462.2:Mult8x8.lo.fir@701.2]
  input  [7:0]  io_input, // @[:@465.4:Mult8x8.lo.fir@704.4]
  input  [1:0]  io_cnt, // @[:@465.4:Mult8x8.lo.fir@705.4]
  output [15:0] io_result // @[:@465.4:Mult8x8.lo.fir@706.4]
);
  wire  _T_6; // @[Shifter.scala 46:14:@467.4:Mult8x8.lo.fir@708.4]
  wire [15:0] _T_8; // @[Shifter.scala 48:35:@469.6:Mult8x8.lo.fir@709.4]
  wire [19:0] _GEN_2; // @[Shifter.scala 48:47:@471.6:Mult8x8.lo.fir@710.4]
  wire [19:0] _T_9; // @[Shifter.scala 48:47:@471.6:Mult8x8.lo.fir@710.4]
  wire  _T_11; // @[Shifter.scala 50:20:@475.6:Mult8x8.lo.fir@711.4]
  wire [23:0] _GEN_3; // @[Shifter.scala 52:48:@479.8:Mult8x8.lo.fir@713.4]
  wire [23:0] _T_14; // @[Shifter.scala 52:48:@479.8:Mult8x8.lo.fir@713.4]
  wire [23:0] _GEN_0; // @[Shifter.scala 51:3:@476.6:Mult8x8.lo.fir@715.4]
  wire [23:0] _GEN_1; // @[Shifter.scala 47:3:@468.4:Mult8x8.lo.fir@716.4]
  assign _T_6 = io_cnt == 2'h1; // @[Shifter.scala 46:14:@467.4:Mult8x8.lo.fir@708.4]
  assign _T_8 = {{8'd0}, io_input}; // @[Shifter.scala 48:35:@469.6:Mult8x8.lo.fir@709.4]
  assign _GEN_2 = {{4'd0}, _T_8}; // @[Shifter.scala 48:47:@471.6:Mult8x8.lo.fir@710.4]
  assign _T_9 = _GEN_2 << 4; // @[Shifter.scala 48:47:@471.6:Mult8x8.lo.fir@710.4]
  assign _T_11 = io_cnt == 2'h2; // @[Shifter.scala 50:20:@475.6:Mult8x8.lo.fir@711.4]
  assign _GEN_3 = {{8'd0}, _T_8}; // @[Shifter.scala 52:48:@479.8:Mult8x8.lo.fir@713.4]
  assign _T_14 = _GEN_3 << 8; // @[Shifter.scala 52:48:@479.8:Mult8x8.lo.fir@713.4]
  assign _GEN_0 = _T_11 ? _T_14 : {{8'd0}, _T_8}; // @[Shifter.scala 51:3:@476.6:Mult8x8.lo.fir@715.4]
  assign _GEN_1 = _T_6 ? {{4'd0}, _T_9} : _GEN_0; // @[Shifter.scala 47:3:@468.4:Mult8x8.lo.fir@716.4]
  assign io_result = _GEN_1[15:0];
endmodule
module Mult8x8( // @[:@488.2:Mult8x8.lo.fir@719.2]
  input         clock, // @[:@489.4:Mult8x8.lo.fir@720.4]
  input         reset, // @[:@490.4:Mult8x8.lo.fir@721.4]
  input  [7:0]  io_a, // @[:@491.4:Mult8x8.lo.fir@722.4]
  input  [7:0]  io_b, // @[:@491.4:Mult8x8.lo.fir@723.4]
  input         io_start, // @[:@491.4:Mult8x8.lo.fir@724.4]
  input         io_reset, // @[:@491.4:Mult8x8.lo.fir@725.4]
  output [15:0] io_result, // @[:@491.4:Mult8x8.lo.fir@726.4]
  output        io_done_flag // @[:@491.4:Mult8x8.lo.fir@727.4]
);
  wire  reg0_clock; // @[Mult8x8.scala 16:20:@493.4:Mult8x8.lo.fir@729.4]
  wire  reg0_reset; // @[Mult8x8.scala 16:20:@493.4:Mult8x8.lo.fir@729.4]
  wire  reg0_io_clr; // @[Mult8x8.scala 16:20:@493.4:Mult8x8.lo.fir@729.4]
  wire  reg0_io_clken; // @[Mult8x8.scala 16:20:@493.4:Mult8x8.lo.fir@729.4]
  wire [15:0] reg0_io_in_reg; // @[Mult8x8.scala 16:20:@493.4:Mult8x8.lo.fir@729.4]
  wire [15:0] reg0_io_out_reg; // @[Mult8x8.scala 16:20:@493.4:Mult8x8.lo.fir@729.4]
  wire  ctrl0_clock; // @[Mult8x8.scala 17:21:@496.4:Mult8x8.lo.fir@730.4]
  wire  ctrl0_reset; // @[Mult8x8.scala 17:21:@496.4:Mult8x8.lo.fir@730.4]
  wire  ctrl0_io_start; // @[Mult8x8.scala 17:21:@496.4:Mult8x8.lo.fir@730.4]
  wire [1:0] ctrl0_io_count; // @[Mult8x8.scala 17:21:@496.4:Mult8x8.lo.fir@730.4]
  wire [1:0] ctrl0_io_in_sel; // @[Mult8x8.scala 17:21:@496.4:Mult8x8.lo.fir@730.4]
  wire [1:0] ctrl0_io_shift; // @[Mult8x8.scala 17:21:@496.4:Mult8x8.lo.fir@730.4]
  wire  ctrl0_io_done; // @[Mult8x8.scala 17:21:@496.4:Mult8x8.lo.fir@730.4]
  wire  ctrl0_io_clken; // @[Mult8x8.scala 17:21:@496.4:Mult8x8.lo.fir@730.4]
  wire  ctrl0_io_regclr; // @[Mult8x8.scala 17:21:@496.4:Mult8x8.lo.fir@730.4]
  wire  mux0_io_sel; // @[Mult8x8.scala 18:20:@499.4:Mult8x8.lo.fir@731.4]
  wire [3:0] mux0_io_a; // @[Mult8x8.scala 18:20:@499.4:Mult8x8.lo.fir@731.4]
  wire [3:0] mux0_io_b; // @[Mult8x8.scala 18:20:@499.4:Mult8x8.lo.fir@731.4]
  wire [3:0] mux0_io_y; // @[Mult8x8.scala 18:20:@499.4:Mult8x8.lo.fir@731.4]
  wire  mux1_io_sel; // @[Mult8x8.scala 19:20:@502.4:Mult8x8.lo.fir@732.4]
  wire [3:0] mux1_io_a; // @[Mult8x8.scala 19:20:@502.4:Mult8x8.lo.fir@732.4]
  wire [3:0] mux1_io_b; // @[Mult8x8.scala 19:20:@502.4:Mult8x8.lo.fir@732.4]
  wire [3:0] mux1_io_y; // @[Mult8x8.scala 19:20:@502.4:Mult8x8.lo.fir@732.4]
  wire  cnt0_clock; // @[Mult8x8.scala 20:20:@505.4:Mult8x8.lo.fir@733.4]
  wire  cnt0_reset; // @[Mult8x8.scala 20:20:@505.4:Mult8x8.lo.fir@733.4]
  wire  cnt0_io_clr; // @[Mult8x8.scala 20:20:@505.4:Mult8x8.lo.fir@733.4]
  wire [1:0] cnt0_io_sum; // @[Mult8x8.scala 20:20:@505.4:Mult8x8.lo.fir@733.4]
  wire [3:0] mul0_io_dataa; // @[Mult8x8.scala 21:20:@508.4:Mult8x8.lo.fir@734.4]
  wire [3:0] mul0_io_datab; // @[Mult8x8.scala 21:20:@508.4:Mult8x8.lo.fir@734.4]
  wire [7:0] mul0_io_result; // @[Mult8x8.scala 21:20:@508.4:Mult8x8.lo.fir@734.4]
  wire [15:0] adder0_io_a; // @[Mult8x8.scala 22:22:@511.4:Mult8x8.lo.fir@735.4]
  wire [15:0] adder0_io_b; // @[Mult8x8.scala 22:22:@511.4:Mult8x8.lo.fir@735.4]
  wire [15:0] adder0_io_sum; // @[Mult8x8.scala 22:22:@511.4:Mult8x8.lo.fir@735.4]
  wire [7:0] shifter0_io_input; // @[Mult8x8.scala 23:24:@514.4:Mult8x8.lo.fir@736.4]
  wire [1:0] shifter0_io_cnt; // @[Mult8x8.scala 23:24:@514.4:Mult8x8.lo.fir@736.4]
  wire [15:0] shifter0_io_result; // @[Mult8x8.scala 23:24:@514.4:Mult8x8.lo.fir@736.4]
  wire [3:0] _T_8; // @[Mult8x8.scala 33:20:@523.4:Mult8x8.lo.fir@737.4]
  wire [3:0] _T_9; // @[Mult8x8.scala 34:20:@525.4:Mult8x8.lo.fir@738.4]
  wire  _T_10; // @[Mult8x8.scala 35:31:@527.4:Mult8x8.lo.fir@739.4]
  wire [3:0] _T_11; // @[Mult8x8.scala 37:20:@529.4:Mult8x8.lo.fir@740.4]
  wire [3:0] _T_12; // @[Mult8x8.scala 38:20:@531.4:Mult8x8.lo.fir@741.4]
  wire  _T_13; // @[Mult8x8.scala 39:31:@533.4:Mult8x8.lo.fir@742.4]
  wire  _T_14; // @[Mult8x8.scala 41:18:@535.4:Mult8x8.lo.fir@743.4]
  Reg reg0 ( // @[Mult8x8.scala 16:20:@493.4:Mult8x8.lo.fir@729.4]
    .clock(reg0_clock),
    .reset(reg0_reset),
    .io_clr(reg0_io_clr),
    .io_clken(reg0_io_clken),
    .io_in_reg(reg0_io_in_reg),
    .io_out_reg(reg0_io_out_reg)
  );
  Control ctrl0 ( // @[Mult8x8.scala 17:21:@496.4:Mult8x8.lo.fir@730.4]
    .clock(ctrl0_clock),
    .reset(ctrl0_reset),
    .io_start(ctrl0_io_start),
    .io_count(ctrl0_io_count),
    .io_in_sel(ctrl0_io_in_sel),
    .io_shift(ctrl0_io_shift),
    .io_done(ctrl0_io_done),
    .io_clken(ctrl0_io_clken),
    .io_regclr(ctrl0_io_regclr)
  );
  Mux4 mux0 ( // @[Mult8x8.scala 18:20:@499.4:Mult8x8.lo.fir@731.4]
    .io_sel(mux0_io_sel),
    .io_a(mux0_io_a),
    .io_b(mux0_io_b),
    .io_y(mux0_io_y)
  );
  Mux4 mux1 ( // @[Mult8x8.scala 19:20:@502.4:Mult8x8.lo.fir@732.4]
    .io_sel(mux1_io_sel),
    .io_a(mux1_io_a),
    .io_b(mux1_io_b),
    .io_y(mux1_io_y)
  );
  Counter cnt0 ( // @[Mult8x8.scala 20:20:@505.4:Mult8x8.lo.fir@733.4]
    .clock(cnt0_clock),
    .reset(cnt0_reset),
    .io_clr(cnt0_io_clr),
    .io_sum(cnt0_io_sum)
  );
  Mult4x4 mul0 ( // @[Mult8x8.scala 21:20:@508.4:Mult8x8.lo.fir@734.4]
    .io_dataa(mul0_io_dataa),
    .io_datab(mul0_io_datab),
    .io_result(mul0_io_result)
  );
  Adder adder0 ( // @[Mult8x8.scala 22:22:@511.4:Mult8x8.lo.fir@735.4]
    .io_a(adder0_io_a),
    .io_b(adder0_io_b),
    .io_sum(adder0_io_sum)
  );
  Shifter shifter0 ( // @[Mult8x8.scala 23:24:@514.4:Mult8x8.lo.fir@736.4]
    .io_input(shifter0_io_input),
    .io_cnt(shifter0_io_cnt),
    .io_result(shifter0_io_result)
  );
  assign _T_8 = io_a[3:0]; // @[Mult8x8.scala 33:20:@523.4:Mult8x8.lo.fir@737.4]
  assign _T_9 = io_a[7:4]; // @[Mult8x8.scala 34:20:@525.4:Mult8x8.lo.fir@738.4]
  assign _T_10 = ctrl0_io_in_sel[1]; // @[Mult8x8.scala 35:31:@527.4:Mult8x8.lo.fir@739.4]
  assign _T_11 = io_b[3:0]; // @[Mult8x8.scala 37:20:@529.4:Mult8x8.lo.fir@740.4]
  assign _T_12 = io_b[7:4]; // @[Mult8x8.scala 38:20:@531.4:Mult8x8.lo.fir@741.4]
  assign _T_13 = ctrl0_io_in_sel[0]; // @[Mult8x8.scala 39:31:@533.4:Mult8x8.lo.fir@742.4]
  assign _T_14 = ~ io_start; // @[Mult8x8.scala 41:18:@535.4:Mult8x8.lo.fir@743.4]
  assign io_result = reg0_io_out_reg;
  assign io_done_flag = ctrl0_io_done;
  assign reg0_clock = clock;
  assign reg0_reset = reset;
  assign reg0_io_clr = ctrl0_io_regclr;
  assign reg0_io_clken = ctrl0_io_clken;
  assign reg0_io_in_reg = adder0_io_sum;
  assign ctrl0_clock = clock;
  assign ctrl0_reset = reset;
  assign ctrl0_io_start = io_start;
  assign ctrl0_io_count = cnt0_io_sum;
  assign mux0_io_sel = _T_10;
  assign mux0_io_a = _T_8;
  assign mux0_io_b = _T_9;
  assign mux1_io_sel = _T_13;
  assign mux1_io_a = _T_11;
  assign mux1_io_b = _T_12;
  assign cnt0_clock = clock;
  assign cnt0_reset = reset;
  assign cnt0_io_clr = _T_14;
  assign mul0_io_dataa = mux0_io_y;
  assign mul0_io_datab = mux1_io_y;
  assign adder0_io_a = shifter0_io_result;
  assign adder0_io_b = reg0_io_out_reg;
  assign shifter0_io_input = mul0_io_result;
  assign shifter0_io_cnt = ctrl0_io_shift;
endmodule
