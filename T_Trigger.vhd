library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity T_Trigger is
	Port 
    (
		  trigger_input: in std_logic;
		  trigger_rst: in std_logic;
        trigger_output: out std_logic
    );
end entity;

architecture trig of T_Trigger is
     signal nextValue: std_logic;

begin
	trigger_output <= nextValue;	

	counting: process(trigger_rst, trigger_input)
	begin
	  
		if (trigger_rst = '1') then 
			nextValue <= '1';
		elsif (trigger_input'event and trigger_input = '1') then 
			nextValue <= not nextValue;
		end if;


    end process counting;
end;