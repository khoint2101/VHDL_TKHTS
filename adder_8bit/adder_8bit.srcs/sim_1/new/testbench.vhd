--------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 19:59:44 02/10/2022
-- Design Name:
-- Module Name: D:/Users/ngoc2/tb.vhd
-- Project Name: ngoc2
-- Target Device:
-- Tool versions:
-- Description:
--
-- VHDL Test Bench Created by ISE for module: add4_bcd
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes:
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test. Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;

ENTITY tb IS
END tb;

ARCHITECTURE behavior OF tb IS

-- Component Declaration for the Unit Under Test (UUT)

COMPONENT BCD_8bit
PORT(
a : IN std_logic_vector(7 downto 0);
b : IN std_logic_vector(7 downto 0);
sum : OUT std_logic_vector(8 downto 0)
);
END COMPONENT;



--Inputs
signal a : std_logic_vector(7 downto 0) := (others => '0');
signal b : std_logic_vector(7 downto 0) := (others => '0');



--Outputs
signal sum : std_logic_vector(8 downto 0);
-- No clocks detected in port list. Replace <clock> below with
-- appropriate port name

-- constant <clock>_period : time := 10 ns;

BEGIN

-- Instantiate the Unit Under Test (UUT)
uut: BCD_8bit PORT MAP (
a => a,
b => b,
sum => sum
);



-- Clock process definitions
-- <clock>_process :process
-- begin
-- <clock> <= '0';
-- wait for <clock>_period/2;
-- <clock> <= '1';
-- wait for <clock>_period/2;
-- end process;



-- Stimulus process
stim_proc: process
begin
-- hold reset state for 100 ns.
wait for 100 ns;
a <= "01010010";
b <= "00111001";
wait for 100 ns;
a <= "01110010";
b <= "00110011";
wait for 100 ns;
a <= "01000011";
b <= "00110010";
wait for 100 ns;
a <= "10011000";
b <= "00000001";
wait for 100 ns;
a <= "10011001";
b <= "10011001";
-- wait for <clock>_period*10;



-- insert stimulus here



wait;
end process;



END;