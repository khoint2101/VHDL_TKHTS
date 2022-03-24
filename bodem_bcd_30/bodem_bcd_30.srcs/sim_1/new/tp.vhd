----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/17/2022 06:58:00 PM
-- Design Name: 
-- Module Name: testbench - Behavioral
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

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY cnt10tb IS
END cnt10tb;

ARCHITECTURE behavior OF cnt10tb IS
COMPONENT counter_bcd30_Khoi
PORT(
clk : IN std_logic;
clr : IN std_logic;
load : IN std_logic;
data : IN std_logic_vector(7 downto 0);
qout : OUT std_logic_vector(7 downto 0)
);
END COMPONENT;
--Inputs
signal clk : std_logic := '0';
signal clr : std_logic := '0';
signal load : std_logic := '0';
signal data : std_logic_vector(7 downto 0) := (others => '0');



--Outputs
signal qout : std_logic_vector(7 downto 0);




-- Clock period definitions
constant clk_period : time := 20 ns;

BEGIN

-- Instantiate the Unit Under Test (UUT)
uut: counter_bcd30_Khoi PORT MAP (
clk => clk,
clr => clr,
load => load,
data => data,
qout => qout
);



-- Clock process definitions
clk_process :process
begin
clk <= '0';
wait for clk_period/2;
clk <= '1';
wait for clk_period/2;
end process;



-- Stimulus process
stim_proc: process
begin
    clr <= '1';
    load<= '0';
wait for 100 ns;
    
    clr <= '0';
    load <= '0';
wait for  800 ns;

  clr <= '0';
    load <= '1';
    data <= "00100111";
wait for  50 ns;

  clr <= '1';
    load <= '0';
    data <= "00100011";
wait for  100 ns;

  




-- insert stimulus here



wait;
end process;



END;
