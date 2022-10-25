library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity Counter is
    Port 
    ( 
        rst, clk : in std_logic;
        result: out std_logic_vector(3 downto 0)
    );
end entity;

architecture count_arch of Counter is
	signal Q: std_logic_vector(3 downto 0);
 
	component T_Trigger is 
		port (
			trigger_input: in std_logic;
			trigger_rst: in std_logic;
			trigger_output: out std_logic
		);
	end component;

begin
	
	u1: T_Trigger port map (
		trigger_input => clk,
		trigger_rst => rst,
		trigger_output => Q(0)
	);
	
	u2: T_Trigger port map (
		trigger_input => Q(0),
		trigger_rst => rst,
		trigger_output => Q(1)
	);
	
	u3: T_Trigger port map (
		trigger_input => Q(1),
		trigger_rst => rst,
		trigger_output => Q(2)
	);
	
	u4: T_Trigger port map (
		trigger_input => Q(2),
		trigger_rst => rst,
		trigger_output => Q(3)
	);
	
	result <= Q;

end count_arch;