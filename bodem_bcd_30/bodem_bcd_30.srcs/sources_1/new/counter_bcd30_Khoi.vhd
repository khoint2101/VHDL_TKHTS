----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2022 01:37:52 PM
-- Design Name: 
-- Module Name: counter_bcd30_Khoi - Behavioral
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter_bcd30_Khoi is
    Port (clk, clr, load: IN STD_LOGIC;
                   data: IN std_logic_vector (7 downto 0);
                   qout: out std_logic_vector (7 downto 0) );
end counter_bcd30_Khoi;

architecture Behavioral of counter_bcd30_Khoi is
  
 begin
    PROCESS(clr,clk)
        variable tmp_h, tmp_l: std_logic_vector(3 downto 0);
        begin
         if clr = '1' then
		   tmp_l := (others => '0');
	       tmp_h := (others => '0');
	  
       else
        if (clk'event and load = '1') then
	       tmp_h := data(7 downto 4);
	       tmp_l := data(3 downto 0);
        elsif (clk'event and clk='1') then 
               if (tmp_h = "0010" and tmp_l = "1001") then
                       tmp_l := (others => '0');
	                    tmp_h := (others => '0'); 
                elsif (tmp_l = "1001") then
                    tmp_l := (others => '0');
                    tmp_h := tmp_h + 1;
                
                 else  tmp_l := tmp_l + 1;
                end if; 
           end if;
	   end if;    
	   qout <= tmp_h & tmp_l;
    end process;
    

end Behavioral;
