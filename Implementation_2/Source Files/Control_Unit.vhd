library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Control_Unit is
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
end Control_Unit;

architecture Behavioral of Control_Unit is

type state is (s0,s1,s2,s3,s4,s5,s6,s7,s8);
signal pr_state,next_state : state;

begin

FSM_Block:process(clk)
begin
if(clk'event and clk='1')then
--State Registers
    if(reset='1') then
         pr_state<=s0;
    else
         pr_state<=next_state;
    end if;    
end if;
end process;

FSM_Combinational_Block: process(reset,pr_state,Instruction)
begin
case pr_state is 
---State 0
    when s0 =>   --reset state---no function 
       PC_write    <='0';
       IR_Write    <='1';
       Reg_Wr_en   <='0';
       ALU_In1_Sel <='1';  --PC update
       ALU_In2_Sel <="10"; --x"0001";
       ALU_OP_SEL  <="000";
       PC_source   <= '0';
       Branch_Neg  <='0';
       Branch_eq   <='0';
       Mem_Write_en<='0';
       if (reset='0') then     
            next_state<= s1;
       else 
            next_state<= s0; 
       end if;

      when s1 =>           ---pc+1 and decode 
       PC_write    <='1';
       IR_Write    <='0';
       Reg_Wr_en   <='0';
       ALU_In1_Sel <='1';  --- 
       ALU_In2_Sel <="10";
       ALU_OP_SEL  <="000";
       PC_source   <= '0';
       Branch_Neg  <='0';
       Branch_eq   <='0';
       Mem_Write_en<='0';
       if(instruction(15 downto 11)="00000") then --Nope
            next_state<= s8;
       elsif(instruction(15 downto 11)="10111") then --Load I
            next_state<= s4; 
       elsif(instruction(15 downto 11)="10101" or instruction(15 downto 11)="11101") then 
            next_state<=s2;--store or load
       elsif(instruction(15 downto 14)="01") then  --rtype    
            next_state<=s5;
        elsif(instruction(15 downto 11)="11000" or instruction(15 downto 11)="11001" or  instruction(15 downto 11)="11010")then 
            next_state<=s6;       ---branch instructions
       else 
            next_state<=s7;
       end if; 
         
       
 
       when s2=>          ----Store or Load 
       PC_write    <='0';
       IR_Write    <='0';
       Reg_Wr_en   <='0';
       ALU_In1_Sel <='0';  --- 
       ALU_In2_Sel <="11";
       ALU_OP_SEL  <="000";
       PC_source   <= '0';
       Branch_Neg  <='0';
       Branch_eq   <='0';
       Mem_Write_en<='0';
       next_state<=s3;       
       
       when s3=>          ----- Memory Access
       PC_write    <='0';
       Reg_Wr_en   <='0';
       ALU_In1_Sel <='0';  --- 
       ALU_In2_Sel <="11";
       ALU_OP_SEL  <="000";
       PC_source   <= '0';
       Branch_Neg  <='0';
       Branch_eq   <='0';
           if(instruction(15 downto 11)="10101") then --load
            Mem_Write_en<='0';
            IR_Write    <='0';
            next_state<=s4;
           elsif (instruction(15 downto 11)="11101")then-- store
            Mem_Write_en<='1';
            IR_Write    <='1';
            next_state<=s1;
           else 
           	IR_Write    <='0';
             Mem_Write_en<='0';
             next_state<=s4;
           end if;
        
        
        
       when s4=>         -----register write 
           PC_write    <='0';
           IR_Write    <='1';
           Reg_Wr_en   <='1';
           ALU_In1_Sel <='0';  --- 
           ALU_In2_Sel <="11";
           ALU_OP_SEL  <="000";
           PC_source   <= '0';
           Branch_Neg  <='0';
           Branch_eq   <='0';
           Mem_Write_en<='0';
           next_state<=s1;
        
       when s5=>
           PC_write    <='0';
           IR_Write    <='0';
           Reg_Wr_en   <='0';
           ALU_In1_Sel <='0';  --- 
           if(instruction(13 downto 11)="101" or instruction(13 downto 11)="110")then
                           ALU_In2_Sel <="01";
           else
                     ALU_In2_Sel<="00";
           end if;      
           ALU_OP_SEL  <=instruction(13 downto 11);
           PC_source   <= '0';
           Branch_Neg  <='0';
           Branch_eq   <='0';
           Mem_Write_en<='0';
           next_state<=s4;
      
       
        when s6=>
           PC_write    <='0';
           IR_Write    <='0';
           Reg_Wr_en   <='0';
           ALU_In1_Sel <='1';  --- 
           ALU_In2_Sel <="11";
           ALU_OP_SEL  <="000";
           PC_source   <= '1';
           Branch_Neg  <='0';Branch_eq   <='0'; 
           Mem_Write_en<='0';
           next_state<=s7;
           
        when s7=>
           IR_Write    <='0';
           Reg_Wr_en   <='0';
           ALU_In1_Sel <='0';  --- 
           ALU_In2_Sel <="00";
           ALU_OP_SEL  <="001";
           PC_source   <= '1';
           if ((instruction(15 downto 11)="11001"))then 
           Branch_Neg  <='1';Branch_eq   <='0'; PC_write    <='0';
           elsif((instruction(15 downto 11)="11000"))then
           Branch_Neg  <='0';Branch_eq   <='1';PC_write    <='0';
           else 
           Branch_Neg  <='0';Branch_eq   <='0';PC_write    <='1';
           end if;           
           Mem_Write_en<='0';
           next_state<=s8;
           
           when s8=>
           PC_write    <='0';
           IR_Write    <='1';
           Reg_Wr_en   <='0';
           ALU_In1_Sel <='0';  --- 
           ALU_In2_Sel <="00";
           ALU_OP_SEL  <="000";
           PC_source   <= '1';
           Branch_Neg  <='0';
           Branch_eq   <='0';      
           Mem_Write_en<='0';
           next_state<=s1;
        
        
        when others=>
           PC_write    <='1';
           IR_Write    <='1';
           Reg_Wr_en   <='0';
           ALU_In1_Sel <='0';  --PC update
           ALU_In2_Sel <="00"; --x"0001";
           ALU_OP_SEL  <="000";
           PC_source   <= '0';
           Branch_Neg  <='0';
           Branch_eq   <='0';
           Mem_Write_en<='0';
           next_state<=s1;
       end case;
end process;
end Behavioral;
