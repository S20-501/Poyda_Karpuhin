library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity tb_DFlipFlop is
	Port 
	(
		D, clk, rst, success: out std_logic;
		Q, nQ: in std_logic
	);
end entity;

architecture tb_DFlipFlop_arch of tb_DFlipFlop is
--    signal rst: std_logic := '0';
--    signal clk: std_logic := '1';
--	 signal result: std_logic_vector(0 to 3);
--
--    constant clockFrequencyHz : integer := 500;
--    constant clockPeriod: time := 1000 ms / clockFrequencyHz;
	 
begin
	 process is 
	 begin
		success <= '1';
		
		rst <= '1';
		
		wait for 1 ms;
		rst <= '0';
		D <= '1';
		
		if (Q = '1' and Q = '0') then
			success <= '1';
		else 
			success <= '0';
		end if;
		
		wait for 1000 ms;
	 end process;

end;