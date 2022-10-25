library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity CounterTB is
end entity;

architecture count_arch_test of CounterTB is
    signal rst: std_logic := '0';
    signal clk: std_logic := '1';
	 signal result: std_logic_vector(0 to 3);

    constant clockFrequencyHz : integer := 500;
    constant clockPeriod: time := 1000 ms / clockFrequencyHz;
	 
begin

    i_Counter : entity work.Counter(count_arch)
    port map (
        clk => clk,
        rst => rst,
		  result => result
    );

    clk <= not clk after clockPeriod / 2;
	 
	 process is 
	 begin
	 
		rst <= '1';
		
		wait for 1 ms;
		rst <= '0';
		
		wait for 25 ms;
		rst <= '1';
		wait for 1 ms;
		rst <= '0';
--		
		wait for 10 ms;
		rst <= '1';
	 end process;

end;