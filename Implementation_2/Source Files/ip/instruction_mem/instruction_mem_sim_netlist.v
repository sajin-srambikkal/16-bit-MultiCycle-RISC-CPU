// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Sep  4 19:11:49 2021
// Host        : LAPTOP-BGBH2RQR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/Mtech_IISC_DESE_2020_2022/3rd semester/PSD/Assignment/Assign
//               1_Multicycle/Multicycle_check_Final/Multicycle_check3/Multicycle.check1.srcs/sources_1/ip/instruction_mem/instruction_mem_sim_netlist.v}
// Design      : instruction_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "instruction_mem,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module instruction_mem
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
  (* c_mem_init_file = "instruction_mem.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "16" *) 
  (* is_du_within_envelope = "true" *) 
  instruction_mem_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15568)
`pragma protect data_block
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
xqEjWFmCvQ==
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
