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

 sky130_fd_sc_hd__nor2_1 _10_ (.A(rst),
    .B(count[0]),
    .Y(_02_));
 sky130_fd_sc_hd__xnor2_1 _11_ (.A(count[2]),
    .B(_00_),
    .Y(_06_));
 sky130_fd_sc_hd__nor2_1 _12_ (.A(rst),
    .B(_06_),
    .Y(_03_));
 sky130_fd_sc_hd__nor2_1 _13_ (.A(rst),
    .B(count[3]),
    .Y(_07_));
 sky130_fd_sc_hd__nor2b_1 _14_ (.A(rst),
    .B_N(count[3]),
    .Y(_08_));
 sky130_fd_sc_hd__nand3_2 _15_ (.A(count[2]),
    .B(count[1]),
    .C(count[0]),
    .Y(_09_));
 sky130_fd_sc_hd__mux2_4 _16_ (.A0(_07_),
    .A1(_08_),
    .S(_09_),
    .X(_04_));
 sky130_fd_sc_hd__nor2b_1 _17_ (.A(rst),
    .B_N(_01_),
    .Y(_05_));
 sky130_fd_sc_hd__ha_1 _18_ (.A(count[0]),
    .B(count[1]),
    .COUT(_00_),
    .SUM(_01_));
 sky130_fd_sc_hd__dfxtp_1 \count[0]$_SDFF_PP0_  (.D(_02_),
    .Q(count[0]),
    .CLK(clk));
 sky130_fd_sc_hd__dfxtp_1 \count[1]$_SDFF_PP0_  (.D(_05_),
    .Q(count[1]),
    .CLK(clk));
 sky130_fd_sc_hd__dfxtp_1 \count[2]$_SDFF_PP0_  (.D(_03_),
    .Q(count[2]),
    .CLK(clk));
 sky130_fd_sc_hd__dfxtp_1 \count[3]$_SDFF_PP0_  (.D(_04_),
    .Q(count[3]),
    .CLK(clk));
endmodule
