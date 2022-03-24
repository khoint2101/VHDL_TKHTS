----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/15/2022 03:36:04 PM
-- Design Name: 
-- Module Name: BCD_8bit - NTK
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity BCD_8bit is
Port (a, b: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        sum: OUT STD_LOGIC_VECTOR (8 DOWNTO 0) );
end BCD_8bit;

architecture NTK of BCD_8bit is
    signal a1: STD_LOGIC_VECTOR (7 DOWNTO 0);
    signal a2: STD_LOGIC_VECTOR (7 DOWNTO 0);
    signal b1: STD_LOGIC_VECTOR ( 7 DOWNTO 0);
    signal b2: STD_LOGIC_VECTOR ( 7 DOWNTO 0);
    signal c1: STD_LOGIC_VECTOR (8 DOWNTO 0);
    signal c2: STD_LOGIC_VECTOR (8 DOWNTO 0);
    signal tmp: STD_LOGIC_VECTOR (8 DOWNTO 0);
begin
     a1 <= ( a AND "11110000");         -- loc bit thap cua a
     a2 <= ( a AND "00001111");         -- loc bit cao cua a
     b1 <= ( b AND "11110000");         -- loc bit thap cua  b
     b2 <= ( b AND "00001111");         -- loc bit cao cua b
     c1 <= ('0' & a1) + b1;
     c2 <= ('0' & a2) + b2;
       
      process(c1,c2,tmp)
        begin
            if c1 > 144  then tmp <= c1 + 96;  -- 0110 0000
            else tmp <= c1;
            end if;
            
            if c2 > 9 then
             sum <= tmp+c2+6; -- 6 : 0110
            else sum <= tmp+c2;     
            end if;
    end process;         
            
end NTK;
