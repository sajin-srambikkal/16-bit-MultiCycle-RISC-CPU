----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/22/2021 10:54:37 PM
-- Design Name: 
-- Module Name: RISC_TOP - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RISC_TOP is
    Port ( Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           PC_Value : out STD_LOGIC_VECTOR (15 downto 0);
           Instruction : out STD_LOGIC_VECTOR (15 downto 0);
           Data_Mem_Add : out STD_LOGIC_VECTOR (15 downto 0);
           mem_write_en : out std_logic;
           data_memory_write: out std_logic_vector(15 downto 0);
           data_memory_read: out std_logic_vector(15 downto 0)               
               );
end RISC_TOP;

architecture Behavioral of RISC_TOP is

component RISC_CPU is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Instruction : in STD_LOGIC_VECTOR (15 downto 0);
            IR_Write : out std_logic;
           Pc_value : out STD_LOGIC_VECTOR (15 downto 0);
           data_memory_load : in STD_LOGIC_VECTOR (15 downto 0);
           mem_write_en : out STD_LOGIC;
           Data_Mem_Add : out STD_LOGIC_VECTOR (15 downto 0);
           Mem_write_Data : out STD_LOGIC_VECTOR (15 downto 0));
end component RISC_CPU;

COMPONENT instruction_mem
  PORT (
    a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    clk : IN STD_LOGIC;
    we : IN STD_LOGIC;
    spo : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;

COMPONENT data_mem
  PORT (
    a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    clk : IN STD_LOGIC;
    we : IN STD_LOGIC;
    spo : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;


signal Instruction_temp,Instruction_fetch,Pc_value_temp,data_memory_load_temp,Data_Mem_Add_temp :STD_LOGIC_VECTOR(15 DOWNTO 0);
signal Mem_write_Data_temp:STD_LOGIC_VECTOR(15 DOWNTO 0); 

signal mem_write_en_temp,IR_Write : STD_LOGIC;

begin


U1 : data_mem
  PORT MAP (
    a => Data_Mem_Add_temp(7 downto 0),
    d => Mem_write_Data_temp,
    clk => clk,
    we => mem_write_en_temp,
    spo => data_memory_load_temp
  );
  
  
U2: instruction_mem
  PORT MAP (
    a => Pc_value_temp(7 downto 0),
    d => x"0000",
    clk => clk,
    we => '0',
    spo => Instruction_temp
  );
  
U3: RISC_CPU port map 
        ( clk => clk,
           reset => Reset,
           Instruction =>Instruction_fetch,
            IR_Write => IR_Write ,
           Pc_value =>Pc_value_temp,
           data_memory_load =>data_memory_load_temp,
           mem_write_en=>mem_write_en_temp,
           Data_Mem_Add =>Data_Mem_Add_temp,
           Mem_write_Data=>Mem_write_Data_temp      
        
        );
        
process(clk)
begin 
    if (clk'event and clk='1') then 
        if(reset='1') then 
            Instruction_fetch<=x"0000";
        else 
            if(IR_Write='1') then 
                Instruction_fetch<=Instruction_temp;
            end if;
        end if;
    end if;
end process;        
        
 mem_write_en<=mem_write_en_temp;       
Pc_value<=Pc_value_temp;
Instruction <=Instruction_fetch;
Data_Mem_Add<=Data_Mem_Add_temp;
data_memory_read<=data_memory_load_temp;
data_memory_write<=Mem_write_Data_temp;
end Behavioral;
