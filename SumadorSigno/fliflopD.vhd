library ieee;
library work;
use ieee.std_logic_1164.all;
use work.all;

entity FliflopD is 
	port (
		data: in std_logic;
		clk: in std_logic;
		q:inout std_logic;
		qnot:inout std_logic
	);
end FliflopD;

architecture Flipflop of FliflopD is
      signal s,r:std_logic;
begin
     arc: process(clk)
	  begin
     if(clk'event and clk='1')then
	    q<=data;
	  end if;
	  end process;
end Flipflop;