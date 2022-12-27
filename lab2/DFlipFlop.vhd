library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity DFlipFlop is
	Port 
	(
		D, clk, rst: in std_logic;
		Q, nQ: out std_logic
	);
end entity;

architecture trig of DFlipFlop is
     signal nextValue: std_logic;

begin
	Q <= nextValue;
	nQ <= not nextValue;

	process(rst, clk)
	begin
	  
		if (rst = '1') then 
			nextValue <= '0';
		elsif (clk'event and clk = '1') then 
			nextValue <= D;
		end if;


    end process;
end;