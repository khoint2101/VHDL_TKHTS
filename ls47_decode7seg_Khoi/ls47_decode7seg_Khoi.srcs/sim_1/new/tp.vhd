----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/25/2022 09:48:12 PM
-- Design Name: 
-- Module Name: tp - Behavioral
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

entity tb is
end tb;

-- component test
architecture Behavioral of tb is
component ls47_led7seg_Khoi
    Port (
        a,b,c,d: IN STD_LOGIC;	
        rbo, rbi, lt: IN STD_LOGIC;
        y: OUT STD_LOGIC_VECTOR (6 DOWNTO 0)
    );
end component;

--input
signal a: std_logic := '0';
signal b: std_logic := '0';
signal c: std_logic := '0';
signal d: std_logic := '0';
signal rbo: std_logic := '1';
signal rbi: std_logic := '1';
signal lt: std_logic := '1';
--output
signal y: std_logic_vector(6 downto 0);

begin
-- Instantiate the Unit Under Test (UUT)
uut: ls47_led7seg_Khoi PORT MAP (
    a => a,
    b => b,
    c => c,
    d => d,
    rbo => rbo, 
    rbi => rbi, 
    lt => lt,
    y => y
);


-- Stimulus process
stim_proc: process
    begin
        wait for 100ns;
        a <= '1';
        b <= '0';
        c <= '0';
        d <= '1';
        wait for 100 ns;
        a <= '0';
        b <= '0';
        c <= '0';
        d <= '1';
        wait for 100 ns;
        a <= '0';
        b <= '1';
        c <= '1';
        d <= '1';
        wait for 100 ns;
        a <= '0';
        b <= '1';
        c <= '0';
        d <= '1';
        wait for 100 ns;
        a <= '0';
        b <= '1';
        c <= '1';
        d <= '0';
        wait for 100 ns;
        a <= '1';
        b <= '1';
        c <= '1';
        d <= '0';
        wait for 100 ns;
        a <= '0';
        b <= '1';
        c <= '0';
        d <= '1';
        wait for 100 ns;
        wait;
    end process;
end Behavioral;