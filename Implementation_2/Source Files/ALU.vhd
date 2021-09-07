
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;

entity ALU is
        
        Port   (data_in1 : in STD_LOGIC_VECTOR (15 downto 0);
               data_in2 : in STD_LOGIC_VECTOR (15 downto 0);
               ALU_output : out STD_LOGIC_VECTOR (15 downto 0);
               zero_flag : out STD_LOGIC;
               Neg_flag  : out std_logic;
               alu_op_sel : in STD_LOGIC_VECTOR (2 downto 0));
    end ALU;

architecture Behavioral of ALU is
 

signal data_out : std_logic_vector (15 downto 0);
begin

Neg_flag<= not data_out(15);
zero_flag<= '0' when (data_out=x"0000") else '1'; 

ALU_output <=  data_out;
process(data_in1 , data_in2 , alu_op_sel)
begin

case alu_op_sel is 

   when "000" =>
     data_out <= data_in1+ data_in2;
     
   when "001" =>
     data_out <= data_in1 + (not(data_in2) + 1);
     
      
   when "010" => 
     data_out <= data_in1 xor data_in2 ;
    
   when "011" =>
     data_out <= data_in1 and data_in2;
     
   when "100" =>
     data_out <= data_in1 or data_in2;
     
   when "101" =>
   
      case data_in2(3 downto 0) is 
        when "0000" =>
          data_out <= data_in1(15 downto 0);
        when "0001" =>
          data_out <= data_in1(14 downto 0) & '0';   
        when "0010" =>
          data_out <= data_in1(13 downto 0) & "00";
        when "0011" =>
          data_out <= data_in1(12 downto 0) & "000";
        when "0100" =>
          data_out <= data_in1(11 downto 0) & "0000"; 
        when "0101" =>
          data_out <= data_in1(10 downto 0) & "00000";
        when "0110" =>
          data_out <= data_in1(9 downto 0) & "000000";
        when "0111" =>
          data_out <= data_in1(8 downto 0) & "0000000";
        when "1000" =>
          data_out <= data_in1(7 downto 0)& "00000000";
        when "1001" =>
          data_out <= data_in1(6 downto 0) & "000000000";  
        when "1010" =>
          data_out <= data_in1(5 downto 0) & "0000000000";  
        when "1011" =>
          data_out <= data_in1(4 downto 0) & "00000000000"; 
        when "1100" =>
          data_out <= data_in1(3 downto 0) & "000000000000"; 
        when "1101" =>
          data_out <= data_in1(2 downto 0) & "0000000000000"; 
        when "1110" =>
          data_out <= data_in1(1 downto 0) & "00000000000000"; 
        when "1111" =>
          data_out <= data_in1(0) & "000000000000000";  
        when others => 
         data_out <= (others => '0');  
                  
        end case;  
        
        
      
      
      
      
  when "110" =>
        
      case data_in2(3 downto 0) is 
        when "0000" =>
          data_out <= data_in1(15 downto 0);
        when "0001" =>
          data_out <=  '0' & data_in1(15 downto 1);   
        when "0010" =>
          data_out <= "00" & data_in1(15 downto 2);
        when "0011" =>
          data_out <= "000" & data_in1(15 downto 3);
        when "0100" =>
          data_out <= "0000" & data_in1(15 downto 4) ; 
        when "0101" =>
          data_out <= "00000" & data_in1(15 downto 5) ;
        when "0110" =>
          data_out <= "000000" & data_in1(15 downto 6);
        when "0111" =>
          data_out <= "0000000" & data_in1(15 downto 7);  
          
        when "1000" =>
          data_out <= "00000000" & data_in1(15 downto 8);  
        when "1001" =>
          data_out <=  "000000000" & data_in1(15 downto 9);     
        when "1010" =>
          data_out <= "0000000000" & data_in1(15 downto 10);   
        when "1011" =>
          data_out <= "00000000000" & data_in1(15 downto 11);   
        when "1100" =>
          data_out <= "000000000000" & data_in1(15 downto 12); 
        when "1101" =>
          data_out <= "0000000000000" & data_in1(15 downto 13); 
        when "1110" =>
          data_out <= "00000000000000" & data_in1(15 downto 14);
        when "1111" =>
          data_out <= "000000000000000" & data_in1(15); 
            
        
       when others => 
        data_out <= (others => '0');        
        end case;  
      
   when others => 
     data_out <= (others => '0');
     
   end case;
  end process;    
end Behavioral;
