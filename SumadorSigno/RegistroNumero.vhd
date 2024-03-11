library ieee;
library work;
use ieee.std_logic_1164.all;
use work.all;

entity RegistroNumero is 
	port (
		data: in std_logic_vector(0 to 4);
		clk: in std_logic;
		readdata:inout std_logic_vector(0 to 4);
		readdatan:inout std_logic_vector(0 to 4)
	);
end RegistroNumero;

architecture registro of RegistroNumero is
begin
     FliflopD1:FliflopD port map(
	     data => data(0),
		  clk => clk,
		  q => readdata(0),
		  qnot =>readdatan(0)
	  );
	   flipflop2:FliflopD port map(
	     data => data(1),
		  clk => clk,
		  q => readdata(1),
		  qnot =>readdatan(1)
	  );
	   flipflop3:FliflopD port map(
	     data => data(2),
		  clk => clk,
		  q => readdata(2),
		  qnot =>readdatan(2)
	  );
	   flipflop4:FliflopD port map(
	     data => data(3),
		  clk => clk,
		  q => readdata(3),
		  qnot =>readdatan(3)
	  );
	   flipflop5:FliflopD port map(
	     data => data(4),
		  clk => clk,
		  q => readdata(4),
		  qnot =>readdatan(4)
	  );
end registro;