// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Sep  3 19:26:10 2021
// Host        : LAPTOP-BGBH2RQR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {d:/Mtech_IISC_DESE_2020_2022/3rd semester/PSD/Assignment/Assign
//               1_Multicycle/Multicycle_check_Final/Multicycle_check2/Multicycle.check1.srcs/sources_1/ip/data_mem/data_mem_sim_netlist.v}
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
Modfgw8vcKnWQ0/7GOZWJA==
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
