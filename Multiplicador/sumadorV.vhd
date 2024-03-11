library ieee;
library work;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity sumadorV is 
	port (
		a: in std_logic_vector(0 TO 6);
		b: in std_logic_vector(0 TO 6);
		s:inout std_logic_vector(0 to 6)
	);
end sumadorV;

architecture sum of sumadorV is
    signal cin, cout: std_logic_vector(0 TO 6);
	 signal sums: std_logic_vector(0 TO 6);
begin
	suma1: sumador port map (
			a => a(0),
			b => b(0),
			cent => '0',
			cout => cout(0),
			suma => sums(0)
	);
   s(0)<=sums(0);	
	suma2: sumador port map (
			a => a(1),
			b => b(1),
			cent => cout(0),
			cout => cout(1),
			suma => sums(1)
	);
	s(1)<=sums(1);
	suma3: sumador port map (
			a => a(2),
			b => b(2),
			cent => cout(1),
			cout => cout(2),
			suma => sums(2)
	);
	s(2)<=sums(2);
	suma4: sumador port map (
			a => a(3),
			b => b(3),
			cent => cout(2),
			cout => cout(3),
			suma => sums(3)
	);
	s(3)<=sums(3);
	suma5: sumador port map (
			a => a(4),
			b => b(4),
			cent => cout(3),
			cout => cout(4),
			suma => sums(4)
	);
	s(4)<=sums(4);
	suma6: sumador port map (
			a => a(5),
			b => b(5),
			cent => cout(4),
			cout => cout(5),
			suma => sums(5)
	);
	s(5)<=sums(5);
	suma7: sumador port map (
			a => a(6),
			b => b(6),
			cent => cout(5),
			cout => cout(6),
			suma => sums(6)
	);
	s(6)<=sums(6);
end sum; 