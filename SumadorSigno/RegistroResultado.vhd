library ieee;
library work;
use ieee.std_logic_1164.all;
use work.all;

entity RegistroResultado is 
	port (
		data: in std_logic_vector(0 to 5);
		clock: in std_logic;
		readdata:inout std_logic_vector(0 to 5);
		readdatan:inout std_logic_vector(0 to 5)
	);
end RegistroResultado;

architecture registro of RegistroResultado is
begin
     flipflop1:FliflopD port map(
	     data => data(0),
		  clk => clock,
		  q => readdata(0),
		  qnot =>readdatan(0)
	  );
	   flipflop2:FliflopD port map(
	     data => data(1),
		  clk => clock,
		  q => readdata(1),
		  qnot =>readdatan(1)
	  );
	   flipflop3:FliflopD port map(
	     data => data(2),
		  clk => clock,
		  q => readdata(2),
		  qnot =>readdatan(2)
	  );
	   flipflop4:FliflopD port map(
	     data => data(3),
		  clk => clock,
		  q => readdata(3),
		  qnot =>readdatan(3)
	  );
	   flipflop5:FliflopD port map(
	     data => data(4),
		  clk => clock,
		  q => readdata(4),
		  qnot =>readdatan(4)
	  );
	   flipflop6:FliflopD port map(
	     data => data(5),
		  clk => clock,
		  q => readdata(5),
		  qnot =>readdatan(5)
	  );
end registro;