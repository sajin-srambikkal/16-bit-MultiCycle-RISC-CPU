
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RISC_CPU is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Instruction : in STD_LOGIC_VECTOR (15 downto 0);
           IR_Write : out std_logic;
           Pc_value : out STD_LOGIC_VECTOR (15 downto 0);
           data_memory_load : in STD_LOGIC_VECTOR (15 downto 0);
           mem_write_en : out STD_LOGIC;
           Data_Mem_Add : out STD_LOGIC_VECTOR (15 downto 0);
           Mem_write_Data : out STD_LOGIC_VECTOR (15 downto 0));
end RISC_CPU;

architecture Behavioral of RISC_CPU is

component Data_path is
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
end component Data_path;


component Control_Unit is
    Port ( Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Instruction : in STD_LOGIC_VECTOR (15 downto 0);
           PC_write : out STD_LOGIC;
           IR_Write : out STD_LOGIC;
           Reg_Wr_en : out STD_LOGIC;
           ALU_In1_Sel : out STD_LOGIC;
           ALU_In2_Sel : out STD_LOGIC_VECTOR (1 downto 0);
           ALU_OP_SEL : out STD_LOGIC_VECTOR (2 downto 0);
           PC_source : out STD_LOGIC;
           Branch_eq : out STD_LOGIC;
           Branch_Neg : out STD_LOGIC;
           Mem_Write_en: out std_logic);
end component Control_Unit;

Signal PC_write,Reg_Wr_en,ALU_In1_Sel,PC_source,Branch_eq,Branch_Neg,Mem_Write_en_temp :STD_LOGIC;
Signal ALU_In2_Sel: STD_LOGIC_VECTOR (1 downto 0);
Signal ALU_OP_SEL: STD_LOGIC_VECTOR (2 downto 0);

Signal ALU_Output_Add_temp, Write_Data_temp, PC_Value_temp :STD_LOGIC_VECTOR (15 downto 0); 


begin

U1: Data_path port map (
           Clk => Clk,
           Reset =>Reset,
      
           Instruction =>Instruction,
           data_mem_load =>data_memory_load,
           -- Control Signals from FSM
           PC_write =>PC_write,
 --          IR_Write =>IR_Write,
           Reg_Wr_en =>Reg_Wr_en,
           ALU_In1_Sel =>ALU_In1_Sel,
           ALU_In2_Sel =>ALU_In2_Sel,
           ALU_OP_SEL => ALU_OP_SEL,
           PC_source =>PC_source,
           Branch_eq =>Branch_eq,
           Branch_Neg =>Branch_Neg,
           -----Output Signals from data path---------------------------------------------
           ALU_Output_Add =>ALU_Output_Add_temp,
           Write_Data=>Write_Data_temp,
           PC_Value =>PC_Value_temp
                        );
                        
U2: Control_Unit port map(
           Clk =>Clk,
           Reset =>Reset,
           Instruction =>Instruction,
           PC_write =>PC_write,
           IR_Write =>IR_Write,
           Reg_Wr_en =>Reg_Wr_en,
           ALU_In1_Sel =>ALU_In1_Sel,
           ALU_In2_Sel =>ALU_In2_Sel,
           ALU_OP_SEL =>ALU_OP_SEL,
           PC_source =>PC_source,
           Branch_eq =>Branch_eq,
           Branch_Neg =>Branch_Neg,
           Mem_Write_en=>Mem_Write_en_temp
);     

-------Registering of instruction to Instruction post fetch register--------------------------
                  


mem_write_en<=Mem_Write_en_temp;
Pc_value<=PC_Value_temp;
mem_Write_Data<=Write_Data_temp;
Data_Mem_Add<=ALU_Output_Add_temp;
end Behavioral;
