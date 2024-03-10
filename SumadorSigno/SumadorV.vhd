library ieee;
library work;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity sumadorV is 
	port (
		a: in std_logic_vector(0 TO 4);
		b: in std_logic_vector(0 TO 4);
		s:out std_logic_vector(0 to 5)
	);
end sumadorV;

architecture sum of sumadorV is
    signal cin, cout: std_logic_vector(0 TO 5);
	 signal sums: std_logic_vector(0 TO 5);
begin
	suma1: sumadorsemi port map (
			a => a(0),
			b => b(0),
			cent => '0',
			cout => cout(0),
			suma => sums(0)
	);
   s(0)<=sums(0);	
	suma2: sumadorsemi port map (
			a => a(1),
			b => b(1),
			cent => cout(0),
			cout => cout(1),
			suma => sums(1)
	);
	s(1)<=sums(1);
	suma3: sumadorsemi port map (
			a => a(2),
			b => b(2),
			cent => cout(1),
			cout => cout(2),
			suma => sums(2)
	);
	s(2)<=sums(2);
	suma4: sumadorsemi port map (
			a => a(3),
			b => b(3),
			cent => cout(2),
			cout => cout(3),
			suma => sums(3)
	);
	s(3)<=sums(3);
	s(4)<=cout(3);
end sum; 