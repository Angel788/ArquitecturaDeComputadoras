library ieee;
library work;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity multiplicador is 
	port (
		a: in std_logic_vector(0 TO 3);
		b: in std_logic_vector(0 TO 2);
		s:inout std_logic_vector(0 to 7)
	);
end multiplicador;
	
architecture multiplicacion of multiplicador is
	signal cin, cout: std_logic_vector(0 TO 7);
	signal d: std_logic_vector(0 TO 11);
	signal d1,d2,d3:std_logic_vector(0 TO 7);
	signal sums:std_logic_vector(0 to 7);
	begin 
	      d1(0) <= a(0) and b(0);
			d1(1) <= a(1) and b(0);
			d1(2) <= a(2) and b(0);
			d1(3) <= a(3) and b(0);
		
			d2(1) <= a(0) and b(1);
			d2(2) <= a(1) and b(1);
			d2(3) <= a(2) and b(1);
			d2(4) <= a(3) and b(1);
					
			d3(2) <= a(0) and b(2);
			d3(3) <= a(1) and b(2);
			d3(4) <= a(2) and b(2);
			d3(5) <= a(3) and b(2);	
			sumador1:sumadorv port map(
			   a => d1,
				b => d2,
				s =>sums
			);
			sumador2:sumadorv port map(
			  a => sums,
			  b =>  d3,
			  s=> s
			);
			
end multiplicacion;

