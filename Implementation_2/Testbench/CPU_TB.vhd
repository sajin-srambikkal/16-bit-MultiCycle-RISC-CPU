----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/23/2021 10:39:08 AM
-- Design Name: 
-- Module Name: CPU_TB - Behavioral
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

entity CPU_TB is
--  Port ( );
end CPU_TB;

architecture Behavioral of CPU_TB is

component RISC_TOP is
    Port ( Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           PC_Value : out STD_LOGIC_VECTOR (15 downto 0);
           Instruction : out STD_LOGIC_VECTOR (15 downto 0);
           Data_Mem_Add : out STD_LOGIC_VECTOR (15 downto 0);
           mem_write_en : out std_logic;
           data_memory_write: out std_logic_vector(15 downto 0);
           data_memory_read: out std_logic_vector(15 downto 0)               
               );
end component  RISC_TOP;

constant period:time := 20 ns;
constant setup: time := 4  ns;

signal rst : STD_LOGIC:='1';
signal clk : STD_LOGIC:='0'; 
signal instruction, PC_Value,Data_Mem_Add,data_memory_read,data_memory_write:STD_LOGIC_VECTOR (15 downto 0);
signal mem_write_en: std_logic;

begin
DUT: RISC_TOP port map (Clk, rst, PC_Value, instruction,Data_Mem_Add,mem_write_en,data_memory_write,data_memory_read);

process
begin 
wait for 100ns;
cloop: loop 
Clk<='0';
wait for (period/2) ;
Clk<='1';
wait for (period/2);
end loop;
end process;

process 
begin 
wait for 500ns;
wait for (5*period) ;
wait for (2*period);
wait for (period/2- setup);
Rst<='0';
wait ;

end process;


end Behavioral;
