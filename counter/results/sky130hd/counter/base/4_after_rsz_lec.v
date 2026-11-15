module counter (clk,
    rst,
    count);
 input clk;
 input rst;
 output [3:0] count;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net1;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;

 sky130_fd_sc_hd__nor2_1 _10_ (.A(net1),
    .B(net2),
    .Y(_02_));
 sky130_fd_sc_hd__xnor2_1 _11_ (.A(net4),
    .B(_00_),
    .Y(_06_));
 sky130_fd_sc_hd__nor2_1 _12_ (.A(net1),
    .B(_06_),
    .Y(_03_));
 sky130_fd_sc_hd__nor2_1 _13_ (.A(net1),
    .B(net5),
    .Y(_07_));
 sky130_fd_sc_hd__nor2b_1 _14_ (.A(net1),
    .B_N(net5),
    .Y(_08_));
 sky130_fd_sc_hd__nand3_2 _15_ (.A(net4),
    .B(net3),
    .C(net2),
    .Y(_09_));
 sky130_fd_sc_hd__mux2_4 _16_ (.A0(_07_),
    .A1(_08_),
    .S(_09_),
    .X(_04_));
 sky130_fd_sc_hd__nor2b_1 _17_ (.A(net1),
    .B_N(_01_),
    .Y(_05_));
 sky130_fd_sc_hd__ha_1 _18_ (.A(net2),
    .B(net3),
    .COUT(_00_),
    .SUM(_01_));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .X(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .X(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__dfxtp_1 \count[0]$_SDFF_PP0_  (.D(_02_),
    .Q(net2),
    .CLK(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__dfxtp_1 \count[1]$_SDFF_PP0_  (.D(_05_),
    .Q(net3),
    .CLK(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__dfxtp_1 \count[2]$_SDFF_PP0_  (.D(_03_),
    .Q(net4),
    .CLK(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__dfxtp_1 \count[3]$_SDFF_PP0_  (.D(_04_),
    .Q(net5),
    .CLK(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__buf_1 input1 (.A(rst),
    .X(net1));
 sky130_fd_sc_hd__buf_1 output2 (.A(net2),
    .X(count[0]));
 sky130_fd_sc_hd__buf_1 output3 (.A(net3),
    .X(count[1]));
 sky130_fd_sc_hd__buf_1 output4 (.A(net4),
    .X(count[2]));
 sky130_fd_sc_hd__buf_1 output5 (.A(net5),
    .X(count[3]));
endmodule
