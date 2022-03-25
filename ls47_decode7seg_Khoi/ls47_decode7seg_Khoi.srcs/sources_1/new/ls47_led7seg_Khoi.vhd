----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/25/2022 09:33:28 PM
-- Design Name: 
-- Module Name: ls47_led7seg_Khoi - Behavioral
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

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;                            -- stt 10 : anode chung led 7 doan
ENTITY ls47_led7seg_Khoi IS
PORT (a,b,c,d: IN STD_LOGIC;	
	  rbo, rbi, lt: IN STD_LOGIC;
	  y: OUT STD_LOGIC_VECTOR (6 DOWNTO 0));           --7 chan
END ls47_led7seg_Khoi;
ARCHITECTURE Behavioral OF ls47_led7seg_Khoi IS
SIGNAL xin: STD_LOGIC_VECTOR (6 DOWNTO 0);
BEGIN  xin <=rbo&rbi&lt&d&c&b&a;
	WITH xin SELECT
y <= "0000001" WHEN "1110000",          --0
     "1001111" WHEN "1110001",
     "0010010" WHEN "1110010",
     "0000110" WHEN "1110011",
     "1001100" WHEN "1110100",              --4
     "0100100" WHEN "1110101",
     "0100000" WHEN "1110110",
     "0001111" WHEN "1110111",
     "0000000" WHEN "1111000",  
     "0000100" WHEN "1111001",              --9
     "1111111" WHEN OTHERS; 
END Behavioral;