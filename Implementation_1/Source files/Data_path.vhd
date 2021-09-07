library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Data_path is
Port ( -- general Inputs----
Clk : in STD_LOGIC;
Reset : in STD_LOGIC;
---------------------
Instruction : in STD_LOGIC_VECTOR (15 downto 0);    -- Instruction read from the instruction Memory
data_mem_load : in STD_LOGIC_VECTOR (15 downto 0);  -- data read from memory to load to register
-- Control Signals from FSM
PC_write : in STD_LOGIC;  ---- Program Counter Update Signal from FSM
--          IR_Write : in STD_LOGIC;  ---- Signal to Register instruction--------
Reg_Wr_en : in STD_LOGIC; ---- Write Enable signal to Register
ALU_In1_Sel : in STD_LOGIC; ---- ALU MUX select line for input 1
ALU_In2_Sel : in STD_LOGIC_Vector(1 downto 0); ---- ALU MUX select line for Input 2
ALU_OP_SEL : in STD_LOGIC_VECTOR (2 downto 0); --- ALU Output operation 
PC_source : in STD_LOGIC; ----- PC source Update mainly for branch 
Branch_eq : in STD_LOGIC; ----- Signal indicate Branch if Equal going on 
Branch_Neg : in STD_LOGIC;----- Signal indicate branch if negative flag is set
-----Output Signals from data path---------------------------------------------
ALU_Output_Add : out STD_LOGIC_VECTOR (15 downto 0); ---ALU output address after resgistering to read 
Write_Data : out STD_LOGIC_VECTOR (15 downto 0);     --- data to be written in case of store operation
PC_Value : out STD_LOGIC_VECTOR (15 downto 0));       --- Current PC value to IM
end Data_path;

architecture Behavioral of Data_path is

component ALU is      
Port(  data_in1 : in STD_LOGIC_VECTOR (15 downto 0);
data_in2 : in STD_LOGIC_VECTOR (15 downto 0);
ALU_output : out STD_LOGIC_VECTOR (15 downto 0);
zero_flag : out STD_LOGIC;
Neg_flag  : out std_logic;
alu_op_sel : in STD_LOGIC_VECTOR (2 downto 0));
end component ALU;
    
component Register_File is
Port ( Clk : in STD_LOGIC;                                     --Clk  input
Write_Reg_Data : in STD_LOGIC_VECTOR (15 downto 0);   --data to write
RegA_Addr : in STD_LOGIC_VECTOR (2 downto 0);        --RegA address to read
RegB_Addr : in STD_LOGIC_VECTOR (2 downto 0);        --RegB address to read
Write_Reg_Addr : in STD_LOGIC_VECTOR (2 downto 0);   --Write register address
Write_En : in STD_LOGIC;                             --Register Write enable 
RegA_Out : out STD_LOGIC_VECTOR (15 downto 0);         --Register A data
RegB_Out : out STD_LOGIC_VECTOR (15 downto 0));        --Register B data
end component Register_File;

--Signal Corresponding to Register File---------------------------
Signal RegA_Addr, RegB_Addr, Write_Reg_Addr : STD_LOGIC_VECTOR (2 downto 0);
Signal Reg_Write_data     : std_logic_vector(15 downto 0); --data to be written to Reg file...--Multiplexor output
Signal RegA_Out, RegB_Out, RegA_Out_Reg, RegB_Out_Reg : std_logic_vector(15 downto 0);


Signal Instruction_decode : std_logic_vector(15 downto 0);

--Signal Required for Immediate---------------------------
Signal Immediate              : std_logic_vector(4 downto 0);
Signal Imm_sign_extend,Branch_sign_extend ,Imm_sign_extend2      : std_logic_vector(15 downto 0);

---Signals relataed to ALU--------------------------------
Signal ALU_Output_Reg, ALU_Output        : std_logic_vector(15 downto 0); ---Registered output of ALU----
Signal data_in1, data_in2                : std_logic_vector(15 downto 0);
Signal zero_flag,Neg_flag                : std_logic;



---Signal Related to program counter----------------------
Signal PC_Next,PC_Value_buff : std_logic_vector(15 downto 0);
Signal PC_write_en  : std_logic;

begin


Instruction_decode<=Instruction;

------------------------Simple instruction Decoding ------------------------------------------
RegA_Addr       <= Instruction_decode(7 downto 5)   ; ---RS1             
RegB_Addr       <= Instruction_decode(4 downto 2);    ----RS2
Write_Reg_Addr  <= Instruction_decode(10 downto 8); ----RD1
Immediate       <= Instruction_decode(4 downto 0) when (Instruction_decode(15 downto 11)="10101")  else
Instruction_decode(10 downto 8) & Instruction_decode(1 downto 0);   ---offset to be added or subtracted 

--------------------Sign Extension of the immediate to 16 bit--------------------------------------
Imm_sign_extend2<= "11111111111" & Immediate when Immediate(4)='1' else 
"00000000000" & Immediate;
---------Unconditional Branch Sign Extension---------------------------------------------------------------------
Branch_sign_extend <= (15 downto 8 => Instruction_decode(7)) & Instruction_decode(7 downto 0);

Imm_sign_extend<=Branch_sign_extend when Instruction_decode(15 downto 11)="11010" else
                Imm_sign_extend2;
-------------------Register Data write MUX---------------------------------------------------------
Reg_Write_data <=  ALU_Output_Reg when Instruction_decode(15 downto 14)="01" else    ---- R instruction
data_mem_load  when Instruction_decode(15 downto 11)="10101" else ----Load Instruction
X"00" & Instruction_decode(7 downto 0) when Instruction_decode(15 downto 11)="10111" else
ALU_Output_Reg;
--------------------------------Port Mapping of Register --------------------------------------------
U1: Register_File port map( Clk                => clk,
Write_Reg_Data     => Reg_Write_data,
RegA_Addr          => RegA_Addr,
RegB_Addr          => RegB_Addr,
Write_Reg_Addr     => Write_Reg_Addr, 
Write_En           => Reg_Wr_en,
RegA_Out           => RegA_Out,
RegB_Out           => RegB_Out
);
-----Registering of Register file outputs------------------------------------------------------------
process(clk)
begin
if(clk'event and clk='1') then 
RegA_Out_Reg <= RegA_Out;
RegB_Out_Reg <= RegB_Out;
end if ;
end process;
----------------------ALU INPUT1 MUX-------------------------------------------------------------------
data_in1 <= RegA_Out_Reg when ALU_In1_Sel='0' else  -----Normal operation
PC_Value_buff;                          ----- PC updation 
            
---------------------ALU Input2 MUX--------------------------------------------------------------------
data_in2 <= RegB_Out_Reg when ALU_In2_Sel="00" else ----Normal R operation (Add, SUB, OR, etc)
x"00" & Instruction_decode(7 downto 0) when ALU_In2_Sel="01" else--------Shift operation
x"0001" when ALU_In2_Sel="10" else       --Normal PC update
Imm_sign_extend  ;        --"11" ------------------- offset calculation 
-------------------------------------------------------------------------------------------------------
U2: ALU port map (
data_in1    => data_in1,
data_in2    => data_in2,
ALU_output  => ALU_Output,
zero_flag   => zero_flag,
Neg_flag    => Neg_flag,
alu_op_sel  => ALU_OP_SEL);
-----PC_write_en calculation---------------------------------------------------------------------------
PC_write_en <= PC_write or ( zero_flag and Branch_eq) or (Neg_flag and Branch_Neg);
-------------PC Mux-----------------------------------------------------------------------------------
PC_Next<= ALU_Output when PC_source='0' else  --- Normal instructions
ALU_Output_Reg ; --Branch Instructions
----Registering ALU_Output----------------
process(clk)
begin
if(clk'event and clk='1') then
if(reset='1') then 
ALU_Output_Reg<=x"0000";
else
ALU_Output_Reg<=ALU_Output;
end if;
end if;
end process;
          

process(clk)
begin 
if(clk'event and clk='1') then 
if (Reset='1') then 
PC_Value_buff<=x"0000";
else
if(PC_write_en='1') then
PC_Value_buff<=PC_Next;
end if;            
end if;
end if;
end process;
---Output Signals---------------------------------------------------------------------------------------
PC_Value<=PC_Value_buff;
ALU_Output_Add<=ALU_Output_Reg;
Write_Data<=RegB_Out_Reg;
--------------------------------------------------------------------------------------------------------

end Behavioral;