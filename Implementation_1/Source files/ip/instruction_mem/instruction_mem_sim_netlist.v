// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Sep  3 17:27:07 2021
// Host        : LAPTOP-BGBH2RQR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/Mtech_IISC_DESE_2020_2022/3rd semester/PSD/Assignment/Assign
//               1_Multicycle/Multicycle_check_Final/Multicycle_check2/Multicycle.check1.srcs/sources_1/ip/instruction_mem/instruction_mem_sim_netlist.v}
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
OIa5K65f9g==
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
