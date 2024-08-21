// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Aug  5 18:40:32 2024
// Host        : DESKTOP-IG4J04R running 64-bit major release  (build 9200)
// Command     : write_verilog G:/final/final_project.v
// Design      : WRAPPER
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module FSM_SPI
   (MISO_OBUF,
    \rx_data_reg[0]_0 ,
    rx_valid,
    Q,
    WEA,
    mem_reg,
    tx_valid_reg,
    mem_reg_0,
    CLK,
    tx_valid,
    MOSI_IBUF,
    ss_n_IBUF,
    mem_reg_1,
    mem_reg_2,
    rst_n_IBUF,
    rx_data1__0);
  output MISO_OBUF;
  output \rx_data_reg[0]_0 ;
  output rx_valid;
  output [2:0]Q;
  output [0:0]WEA;
  output [9:0]mem_reg;
  output tx_valid_reg;
  output mem_reg_0;
  input CLK;
  input tx_valid;
  input MOSI_IBUF;
  input ss_n_IBUF;
  input mem_reg_1;
  input mem_reg_2;
  input rst_n_IBUF;
  input rx_data1__0;

  wire \<const1> ;
  wire CLK;
  wire \FSM_sequential_ns_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_ns_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_ns_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_ns_reg[2]_i_2_n_0 ;
  wire GND_1;
  wire MISO_OBUF;
  wire MISO_i_1_n_0;
  wire MISO_i_2_n_0;
  wire MOSI_IBUF;
  wire [2:0]Q;
  wire VCC_2;
  wire [0:0]WEA;
  wire counter_par;
  wire \counter_par[0]_i_1_n_0 ;
  wire \counter_par[1]_i_1_n_0 ;
  wire \counter_par[2]_i_1_n_0 ;
  wire \counter_par[3]_i_2_n_0 ;
  wire \counter_par_reg_n_0_[2] ;
  wire [3:0]counter_ser;
  wire \counter_ser[0]_i_1_n_0 ;
  wire \counter_ser[1]_i_1_n_0 ;
  wire \counter_ser[2]_i_1_n_0 ;
  wire \counter_ser[3]_i_2_n_0 ;
  wire \counter_ser[3]_i_3_n_0 ;
  wire \counter_ser[3]_i_4_n_0 ;
  wire counter_ser_0;
  (* RTL_KEEP = "yes" *) wire [2:0]cs;
  wire [9:0]mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_2;
  wire [2:0]ns;
  wire rd_sig_i_1_n_0;
  wire rd_sig_reg_n_0;
  wire rst_n_IBUF;
  wire rx_data1__0;
  wire \rx_data[9]_i_1_n_0 ;
  wire \rx_data_reg[0]_0 ;
  wire rx_valid;
  wire rx_valid_i_1_n_0;
  wire ss_n_IBUF;
  wire tx_valid;
  wire tx_valid_reg;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_cs[2]_i_1 
       (.I0(rst_n_IBUF),
        .O(\rx_data_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:010,READ_DATA:011,READ_ADD:100,IDEL:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(ns[0]),
        .Q(cs[0]),
        .R(\rx_data_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:010,READ_DATA:011,READ_ADD:100,IDEL:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(ns[1]),
        .Q(cs[1]),
        .R(\rx_data_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:010,READ_DATA:011,READ_ADD:100,IDEL:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(ns[2]),
        .Q(cs[2]),
        .R(\rx_data_reg[0]_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_ns_reg[0] 
       (.CLR(GND_1),
        .D(\FSM_sequential_ns_reg[0]_i_1_n_0 ),
        .G(\FSM_sequential_ns_reg[2]_i_2_n_0 ),
        .GE(VCC_2),
        .Q(ns[0]));
  LUT6 #(
    .INIT(64'h0000000044445111)) 
    \FSM_sequential_ns_reg[0]_i_1 
       (.I0(ss_n_IBUF),
        .I1(cs[0]),
        .I2(MOSI_IBUF),
        .I3(rd_sig_reg_n_0),
        .I4(cs[1]),
        .I5(cs[2]),
        .O(\FSM_sequential_ns_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_ns_reg[1] 
       (.CLR(GND_1),
        .D(\FSM_sequential_ns_reg[1]_i_1_n_0 ),
        .G(\FSM_sequential_ns_reg[2]_i_2_n_0 ),
        .GE(VCC_2),
        .Q(ns[1]));
  LUT6 #(
    .INIT(64'h0000000055554500)) 
    \FSM_sequential_ns_reg[1]_i_1 
       (.I0(ss_n_IBUF),
        .I1(rd_sig_reg_n_0),
        .I2(MOSI_IBUF),
        .I3(cs[0]),
        .I4(cs[1]),
        .I5(cs[2]),
        .O(\FSM_sequential_ns_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_ns_reg[2] 
       (.CLR(GND_1),
        .D(\FSM_sequential_ns_reg[2]_i_1_n_0 ),
        .G(\FSM_sequential_ns_reg[2]_i_2_n_0 ),
        .GE(VCC_2),
        .Q(ns[2]));
  LUT6 #(
    .INIT(64'h00AA00AA00BA00AA)) 
    \FSM_sequential_ns_reg[2]_i_1 
       (.I0(cs[2]),
        .I1(rd_sig_reg_n_0),
        .I2(MOSI_IBUF),
        .I3(ss_n_IBUF),
        .I4(cs[0]),
        .I5(cs[1]),
        .O(\FSM_sequential_ns_reg[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h57)) 
    \FSM_sequential_ns_reg[2]_i_2 
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(cs[0]),
        .O(\FSM_sequential_ns_reg[2]_i_2_n_0 ));
  GND GND
       (.G(GND_1));
  LUT5 #(
    .INIT(32'h01014101)) 
    MISO_i_1
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(cs[0]),
        .I3(tx_valid),
        .I4(Q[2]),
        .O(MISO_i_1_n_0));
  LUT4 #(
    .INIT(16'h8A80)) 
    MISO_i_2
       (.I0(cs[1]),
        .I1(mem_reg_1),
        .I2(\counter_par_reg_n_0_[2] ),
        .I3(mem_reg_2),
        .O(MISO_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(CLK),
        .CE(MISO_i_1_n_0),
        .D(MISO_i_2_n_0),
        .Q(MISO_OBUF),
        .R(\rx_data_reg[0]_0 ));
  VCC VCC
       (.P(\<const1> ));
  VCC VCC_1
       (.P(VCC_2));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_par[0]_i_1 
       (.I0(cs[1]),
        .I1(Q[0]),
        .O(\counter_par[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \counter_par[1]_i_1 
       (.I0(cs[1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\counter_par[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2A80)) 
    \counter_par[2]_i_1 
       (.I0(cs[1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\counter_par_reg_n_0_[2] ),
        .O(\counter_par[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04005555)) 
    \counter_par[3]_i_1 
       (.I0(cs[2]),
        .I1(cs[0]),
        .I2(Q[2]),
        .I3(tx_valid),
        .I4(cs[1]),
        .O(counter_par));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \counter_par[3]_i_2 
       (.I0(cs[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\counter_par_reg_n_0_[2] ),
        .I4(Q[2]),
        .O(\counter_par[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_par_reg[0] 
       (.C(CLK),
        .CE(counter_par),
        .D(\counter_par[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\rx_data_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_par_reg[1] 
       (.C(CLK),
        .CE(counter_par),
        .D(\counter_par[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\rx_data_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_par_reg[2] 
       (.C(CLK),
        .CE(counter_par),
        .D(\counter_par[2]_i_1_n_0 ),
        .Q(\counter_par_reg_n_0_[2] ),
        .R(\rx_data_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_par_reg[3] 
       (.C(CLK),
        .CE(counter_par),
        .D(\counter_par[3]_i_2_n_0 ),
        .Q(Q[2]),
        .R(\rx_data_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h0034)) 
    \counter_ser[0]_i_1 
       (.I0(cs[0]),
        .I1(cs[2]),
        .I2(cs[1]),
        .I3(counter_ser[0]),
        .O(\counter_ser[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00660600)) 
    \counter_ser[1]_i_1 
       (.I0(counter_ser[1]),
        .I1(counter_ser[0]),
        .I2(cs[0]),
        .I3(cs[2]),
        .I4(cs[1]),
        .O(\counter_ser[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00006A6A006A0000)) 
    \counter_ser[2]_i_1 
       (.I0(counter_ser[2]),
        .I1(counter_ser[1]),
        .I2(counter_ser[0]),
        .I3(cs[0]),
        .I4(cs[2]),
        .I5(cs[1]),
        .O(\counter_ser[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3171117131713171)) 
    \counter_ser[3]_i_1 
       (.I0(cs[1]),
        .I1(cs[2]),
        .I2(\counter_ser[3]_i_3_n_0 ),
        .I3(cs[0]),
        .I4(Q[2]),
        .I5(tx_valid),
        .O(counter_ser_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \counter_ser[3]_i_2 
       (.I0(counter_ser[3]),
        .I1(counter_ser[2]),
        .I2(counter_ser[0]),
        .I3(counter_ser[1]),
        .I4(\counter_ser[3]_i_4_n_0 ),
        .O(\counter_ser[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \counter_ser[3]_i_3 
       (.I0(counter_ser[3]),
        .I1(counter_ser[1]),
        .I2(counter_ser[2]),
        .O(\counter_ser[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h26)) 
    \counter_ser[3]_i_4 
       (.I0(cs[1]),
        .I1(cs[2]),
        .I2(cs[0]),
        .O(\counter_ser[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_ser_reg[0] 
       (.C(CLK),
        .CE(counter_ser_0),
        .D(\counter_ser[0]_i_1_n_0 ),
        .Q(counter_ser[0]),
        .R(\rx_data_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_ser_reg[1] 
       (.C(CLK),
        .CE(counter_ser_0),
        .D(\counter_ser[1]_i_1_n_0 ),
        .Q(counter_ser[1]),
        .R(\rx_data_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_ser_reg[2] 
       (.C(CLK),
        .CE(counter_ser_0),
        .D(\counter_ser[2]_i_1_n_0 ),
        .Q(counter_ser[2]),
        .R(\rx_data_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_ser_reg[3] 
       (.C(CLK),
        .CE(counter_ser_0),
        .D(\counter_ser[3]_i_2_n_0 ),
        .Q(counter_ser[3]),
        .R(\rx_data_reg[0]_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    mem_reg_i_1
       (.I0(mem_reg[9]),
        .I1(mem_reg[8]),
        .I2(rst_n_IBUF),
        .O(mem_reg_0));
  LUT3 #(
    .INIT(8'h20)) 
    mem_reg_i_2
       (.I0(rst_n_IBUF),
        .I1(mem_reg[9]),
        .I2(mem_reg[8]),
        .O(WEA));
  LUT6 #(
    .INIT(64'hFFEFFFFF00000F00)) 
    rd_sig_i_1
       (.I0(rx_data1__0),
        .I1(\counter_ser[3]_i_3_n_0 ),
        .I2(cs[0]),
        .I3(cs[2]),
        .I4(cs[1]),
        .I5(rd_sig_reg_n_0),
        .O(rd_sig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rd_sig_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(rd_sig_i_1_n_0),
        .Q(rd_sig_reg_n_0),
        .R(\rx_data_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000BF000F000000)) 
    \rx_data[9]_i_1 
       (.I0(Q[2]),
        .I1(tx_valid),
        .I2(cs[0]),
        .I3(\counter_ser[3]_i_3_n_0 ),
        .I4(cs[2]),
        .I5(cs[1]),
        .O(\rx_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(MOSI_IBUF),
        .Q(mem_reg[0]),
        .R(\rx_data_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(mem_reg[0]),
        .Q(mem_reg[1]),
        .R(\rx_data_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(mem_reg[1]),
        .Q(mem_reg[2]),
        .R(\rx_data_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(mem_reg[2]),
        .Q(mem_reg[3]),
        .R(\rx_data_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(mem_reg[3]),
        .Q(mem_reg[4]),
        .R(\rx_data_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(mem_reg[4]),
        .Q(mem_reg[5]),
        .R(\rx_data_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(mem_reg[5]),
        .Q(mem_reg[6]),
        .R(\rx_data_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(mem_reg[6]),
        .Q(mem_reg[7]),
        .R(\rx_data_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(mem_reg[7]),
        .Q(mem_reg[8]),
        .R(\rx_data_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(mem_reg[8]),
        .Q(mem_reg[9]),
        .R(\rx_data_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFCDCD4D400101414)) 
    rx_valid_i_1
       (.I0(\counter_ser[3]_i_3_n_0 ),
        .I1(cs[2]),
        .I2(cs[1]),
        .I3(rx_data1__0),
        .I4(cs[0]),
        .I5(rx_valid),
        .O(rx_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(rx_valid_i_1_n_0),
        .Q(rx_valid),
        .R(\rx_data_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    tx_valid_i_1
       (.I0(mem_reg[8]),
        .I1(mem_reg[9]),
        .O(tx_valid_reg));
endmodule

module SYN_RAM
   (tx_valid,
    rx_data1__0,
    MISO_reg,
    MISO_reg_0,
    CLK,
    rx_valid,
    \rx_data_reg[9] ,
    rst_n,
    Q,
    WEA,
    \rx_data_reg[8] ,
    \counter_par_reg[3] );
  output tx_valid;
  output rx_data1__0;
  output MISO_reg;
  output MISO_reg_0;
  input CLK;
  input rx_valid;
  input \rx_data_reg[9] ;
  input rst_n;
  input [9:0]Q;
  input [0:0]WEA;
  input \rx_data_reg[8] ;
  input [2:0]\counter_par_reg[3] ;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire MISO_reg;
  wire MISO_reg_0;
  wire [9:0]Q;
  wire [0:0]WEA;
  wire [2:0]\counter_par_reg[3] ;
  wire [7:0]read_addr__0;
  wire read_addr_n_0;
  wire rst_n;
  wire rx_data1__0;
  wire \rx_data_reg[8] ;
  wire \rx_data_reg[9] ;
  wire rx_valid;
  wire [7:0]tx_data;
  wire tx_valid;
  wire [7:0]write_addr__0;
  wire write_addr_n_0;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MISO_i_3
       (.I0(tx_data[0]),
        .I1(tx_data[1]),
        .I2(\counter_par_reg[3] [1]),
        .I3(tx_data[2]),
        .I4(\counter_par_reg[3] [0]),
        .I5(tx_data[3]),
        .O(MISO_reg));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MISO_i_4
       (.I0(tx_data[4]),
        .I1(tx_data[5]),
        .I2(\counter_par_reg[3] [1]),
        .I3(tx_data[6]),
        .I4(\counter_par_reg[3] [0]),
        .I5(tx_data[7]),
        .O(MISO_reg_0));
  VCC VCC
       (.P(\<const1> ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,write_addr__0,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,read_addr__0,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,Q[7:0]}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(tx_data),
        .ENARDEN(rx_valid),
        .ENBWREN(\rx_data_reg[9] ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(rst_n),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  LUT2 #(
    .INIT(4'h2)) 
    rd_sig_i_2
       (.I0(tx_valid),
        .I1(\counter_par_reg[3] [2]),
        .O(rx_data1__0));
  LUT3 #(
    .INIT(8'h40)) 
    read_addr
       (.I0(Q[8]),
        .I1(rx_valid),
        .I2(Q[9]),
        .O(read_addr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[0] 
       (.C(CLK),
        .CE(read_addr_n_0),
        .D(Q[0]),
        .Q(read_addr__0[0]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[1] 
       (.C(CLK),
        .CE(read_addr_n_0),
        .D(Q[1]),
        .Q(read_addr__0[1]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[2] 
       (.C(CLK),
        .CE(read_addr_n_0),
        .D(Q[2]),
        .Q(read_addr__0[2]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[3] 
       (.C(CLK),
        .CE(read_addr_n_0),
        .D(Q[3]),
        .Q(read_addr__0[3]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[4] 
       (.C(CLK),
        .CE(read_addr_n_0),
        .D(Q[4]),
        .Q(read_addr__0[4]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[5] 
       (.C(CLK),
        .CE(read_addr_n_0),
        .D(Q[5]),
        .Q(read_addr__0[5]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[6] 
       (.C(CLK),
        .CE(read_addr_n_0),
        .D(Q[6]),
        .Q(read_addr__0[6]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \read_addr_reg[7] 
       (.C(CLK),
        .CE(read_addr_n_0),
        .D(Q[7]),
        .Q(read_addr__0[7]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data_reg[8] ),
        .Q(tx_valid),
        .R(rst_n));
  LUT3 #(
    .INIT(8'h02)) 
    write_addr
       (.I0(rx_valid),
        .I1(Q[8]),
        .I2(Q[9]),
        .O(write_addr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \write_addr_reg[0] 
       (.C(CLK),
        .CE(write_addr_n_0),
        .D(Q[0]),
        .Q(write_addr__0[0]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \write_addr_reg[1] 
       (.C(CLK),
        .CE(write_addr_n_0),
        .D(Q[1]),
        .Q(write_addr__0[1]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \write_addr_reg[2] 
       (.C(CLK),
        .CE(write_addr_n_0),
        .D(Q[2]),
        .Q(write_addr__0[2]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \write_addr_reg[3] 
       (.C(CLK),
        .CE(write_addr_n_0),
        .D(Q[3]),
        .Q(write_addr__0[3]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \write_addr_reg[4] 
       (.C(CLK),
        .CE(write_addr_n_0),
        .D(Q[4]),
        .Q(write_addr__0[4]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \write_addr_reg[5] 
       (.C(CLK),
        .CE(write_addr_n_0),
        .D(Q[5]),
        .Q(write_addr__0[5]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \write_addr_reg[6] 
       (.C(CLK),
        .CE(write_addr_n_0),
        .D(Q[6]),
        .Q(write_addr__0[6]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \write_addr_reg[7] 
       (.C(CLK),
        .CE(write_addr_n_0),
        .D(Q[7]),
        .Q(write_addr__0[7]),
        .R(rst_n));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module WRAPPER
   (MOSI,
    MISO,
    ss_n,
    clk,
    rst_n);
  input MOSI;
  output MISO;
  input ss_n;
  input clk;
  input rst_n;

  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire RAM_n_2;
  wire RAM_n_3;
  wire SLAVE_SPI_n_1;
  wire SLAVE_SPI_n_17;
  wire SLAVE_SPI_n_18;
  wire SLAVE_SPI_n_3;
  wire SLAVE_SPI_n_4;
  wire SLAVE_SPI_n_5;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire mem;
  wire rst_n;
  wire rst_n_IBUF;
  wire [9:0]rx_data;
  wire rx_data1__0;
  wire rx_valid;
  wire ss_n;
  wire ss_n_IBUF;
  wire tx_valid;

  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  SYN_RAM RAM
       (.CLK(clk_IBUF_BUFG),
        .MISO_reg(RAM_n_2),
        .MISO_reg_0(RAM_n_3),
        .Q(rx_data),
        .WEA(mem),
        .\counter_par_reg[3] ({SLAVE_SPI_n_3,SLAVE_SPI_n_4,SLAVE_SPI_n_5}),
        .rst_n(SLAVE_SPI_n_1),
        .rx_data1__0(rx_data1__0),
        .\rx_data_reg[8] (SLAVE_SPI_n_17),
        .\rx_data_reg[9] (SLAVE_SPI_n_18),
        .rx_valid(rx_valid),
        .tx_valid(tx_valid));
  FSM_SPI SLAVE_SPI
       (.CLK(clk_IBUF_BUFG),
        .MISO_OBUF(MISO_OBUF),
        .MOSI_IBUF(MOSI_IBUF),
        .Q({SLAVE_SPI_n_3,SLAVE_SPI_n_4,SLAVE_SPI_n_5}),
        .WEA(mem),
        .mem_reg(rx_data),
        .mem_reg_0(SLAVE_SPI_n_18),
        .mem_reg_1(RAM_n_2),
        .mem_reg_2(RAM_n_3),
        .rst_n_IBUF(rst_n_IBUF),
        .rx_data1__0(rx_data1__0),
        .\rx_data_reg[0]_0 (SLAVE_SPI_n_1),
        .rx_valid(rx_valid),
        .ss_n_IBUF(ss_n_IBUF),
        .tx_valid(tx_valid),
        .tx_valid_reg(SLAVE_SPI_n_17));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  IBUF ss_n_IBUF_inst
       (.I(ss_n),
        .O(ss_n_IBUF));
endmodule
