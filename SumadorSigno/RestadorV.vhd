library ieee;
library work;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity RestadorV is 
	port (
		a: in std_logic_vector(0 TO 4);
		b: in std_logic_vector(0 TO 4);
		s:inout std_logic_vector(0 to 5)
	);
end RestadorV;

architecture sum of RestadorV is
    signal cin, cout: std_logic_vector(0 TO 7);
	 signal sums: std_logic_vector(0 TO 7);
begin
	suma1: restador port map (
			a => a(0),
			b => b(0),
			cent => '0',
			cout => cout(0),
			suma => sums(0)
	);
   s(0)<=sums(0);	
	suma2: restador port map (
			a => a(1),
			b => b(1),
			cent => cout(0),
			cout => cout(1),
			suma => sums(1)
	);
	s(1)<=sums(1);
	suma3: restador port map (
			a => a(2),
			b => b(2),
			cent => cout(1),
			cout => cout(2),
			suma => sums(2)
	);
	s(2)<=sums(2);
	suma4: restador port map (
			a => a(3),
			b => b(3),
			cent => cout(2),
			cout => cout(3),
			suma => sums(3)
	);
	s(3)<=sums(3);
	s(4)<=cout(4);
end sum; 