// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Sep  4 19:10:39 2021
// Host        : LAPTOP-BGBH2RQR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/Mtech_IISC_DESE_2020_2022/3rd semester/PSD/Assignment/Assign
//               1_Multicycle/Multicycle_check_Final/Multicycle_check3/Multicycle.check1.srcs/sources_1/ip/data_mem/data_mem_sim_netlist.v}
// Design      : data_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "data_mem,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module data_mem
   (a,
    d,
    clk,
    we,
    spo);
  input [7:0]a;
  input [15:0]d;
  input clk;
  input we;
  output [15:0]spo;

  wire [7:0]a;
  wire clk;
  wire [15:0]d;
  wire [15:0]spo;
  wire we;
  wire [15:0]NLW_U0_dpo_UNCONNECTED;
  wire [15:0]NLW_U0_qdpo_UNCONNECTED;
  wire [15:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "8" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "256" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "data_mem.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "16" *) 
  (* is_du_within_envelope = "true" *) 
  data_mem_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[15:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[15:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[15:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(we));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
AWk2+F/LLIwJ/3H70MT+p73z+MaZAUnylB9xu/zfH66xX8dAaOizqpslZkE4MXrWhxdHpghP7sIj
kwvWqhJ3gA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
f3tnX2YCmmij/BT714m5fPTuG3pr/Sp1bWD1FpCFiwTkcUFmqMNcr7abCn+qa2HUp1VAs9a1kY1i
yU68W3C4ARAx1rnlow3CtMBZ+4vG1QDA+Ciu5T+MSJsiWTAoMU3jJunULwD6zEC9h/Y3bBf+ZNGj
RvbKgHQFYSq+EYUzleQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C6xRmzJVnvguMc3Lt5tkoyg5+/u1VuxRooNBOmgUvD6c148xX9CV/zz4fw53vbCzqUg3WYMPAs5M
/tMrhPMrX5cqjMMHbC20NaFxsFGCfdbN+1Jiu6Ffu0obXLvBu7UGBCEaDTCY0wST3S+7NZ+HnAat
RIt5cVRmnWtLEj9MP8SxAk019LKc3+2AUY0eWFhWbTGvNoTLcRFak8vqIx8KBuqhc16O50jjNmM3
PJltfibMKzAmWpsf6xiOkaD+BvARuccAoYGgANLBAEQdJUza98//SuTN0KLZKbFSmy2WI5iAzkxJ
bhH9hPn6Ks1JkH9+j61hMSpdxSh8rM8X8Dppxw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pefxdCU7VwYHa7diZaenheQOVCFpIvDlVp0qUtYsCnfw3IK+d5+k4O7xc5MWvQPeJpwUWNg+c9U8
PcbHo1enWoVg9o1V4U5fg7wxYqKmubBjgGF3yJ5FYGt6FeiD7zcnIJcaP2puAYDdVnxtiJnNmFz2
OQ7UQsleDpBQo3E4NEsbtqgSaopjHREMjI4yjJ9l5XZYNPCWUzUV/mSGX/kF+vuSOZclwPm6w72e
TE0MyJZA2HPDY3HIy260pYSHuDTUpe8gTxi0s8JmpFjaMaibBcPzq2gqPSQe1d6pDE8cv0OxNYKL
gFy+uh/H5gpNjfWVBhRmUo/kFf8fs680z0B0IQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
q8meW/DFYsK3R2jTQ13P/a1BVQyF0Eb3aLhqxNSrqINAq7gQ0DvJ6JFuxd6Ce7TIpxqKUYX9026h
UujOPWt7f1brVrSWmt8cW5Um2Yy8tv+YSNv9Ig592u4GssTU6dF978RK/7L4ZuQObLOKvWLJqo3F
6gzw0VbqYS3g5aaGu+Y=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GVM7UoBz9uTOdnKd0CVM0lBuJK2N20FwcoiRGregMBQMsQuevbc7y03ZehM7mfGvEdERp1TciWoI
1b6cDAZYb0YBfSuch0bItCwhdftV3A4/R0nUF0HROsZ/rm/HV7DKDXxItqK0qcdOwqf7ju85NMa4
FJRP/Nuq/ya9IvX9BCpmUlT7tLkICG8cEL8/iJrJY3jRIBtKw85mL5OM+r22LQeYg1/3rb9Rk9BT
RZCTbDcVSUq2Awr+6f0L2NXlRwhFraBy+h9iSZKZ/U7uolyF0nB1+/BSgOl+rttZ2KxfLXe6g81N
FbxtrlpK7FNc9fx2jrKWh5bczyW6p0ATPX0ZbA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rYkJ9a3QzTBGC5CITub5Su2Qs6nnM1m+OFLf4ykZkZGIsp11NQi6h5t8dsi/rX/MeEof1XLVJGEU
N+qLOHuLrttRAipPNBsj7yqH3Amnleqy/rjy8UcckD0gxIYzuIlc+2VKoAoyrEFgofTH5bKzBaaQ
q0JSt8PES8xuld4SvsKwr+0Q23qJIUpeNL3HvzxZDmYf5OhTkwlZPi/aLwSMoPZHKwetLUg5SdBm
7K4UmxvUPD3GNxo6GW6dkG2tFW/N9+ju7i//O1A74VUrDPo1OwQfEJazwHFFpHGjCJkv2CiPU3+I
TIVvzssQcs8IphMJulwZguc7fFiYv6aZyj/GrA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PqIVM68d++A6qxRgSePlX8JOoCfHcFLdhzsYr1BDYvLE5JJ5WKFO0Bie6pyEiAbsH8z6oUFGm/Qy
BLXAyWfv1fmbVAwztezaMaxBF0Lw4epvQlAFVdMGJVKgvxfU7ssvLc1KfpF6R/c1o5+4Vf7zn3X+
R8k67LVYgJoxhrPoY3XYr88CjSITfNW0jLDjh0jtDWf7H7nM6QYSXVbRYczQPcepXW2MOFcCZsbi
tdla+UNJ4NeKTUK5bdE9tNZx/8BYKrJtLhyvNdwHi7EdonKLjQu63ExIHoriUmiZScMNbtr2LUBc
YYGUTIENquQ/OhU+DAVXmKbIZcQhwGaqjYeaag==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YMvD1GHkklhDlN9yur11SqhNZTItCRHxHobZtty993SsbvXTWJBbLeIJ+nQ/sv57gpjV5RswiJYh
Vu7QPlLUy2DbVjjcqxaxXlPvYaWV1eKD7BVBOV6HDzPAaAIaFvNjeRurYX0a9Dz1qkgkmttneZxB
s04mTyRdVOc7jIs5wjgXiF+iA0W50/g9JmIYyP6mMLkgEy0MbGyVfpbRfDMcrB3ACnucHTo8A0nT
V/rBUOGbTCYPmQ01tbuE2nqoEfTlmqHVKO6BZ93tQUEjrYoJdteva6yHUfH3dbV1vwwBtsdolICY
7x8cMlorxb6y2ZD7vQEYz6Q6iVnG/PmdaCkLSg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15520)
`pragma protect data_block
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
XSoGCZftQLQn/BQ+xkM1+A==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
