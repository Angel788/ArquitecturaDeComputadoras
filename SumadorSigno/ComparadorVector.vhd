library ieee;
library work;
use ieee.std_logic_1164.all;
use work.all;

entity ComparadorVector is 
	port (
		numero1,numero2: in std_logic_vector(0 to 5);
		cmp1,cmp2: out std_logic
	);
end ComparadorVector;

architecture comparadora of ComparadorVector is
      signal  tmpcmp1,tmpcmp2:std_logic_vector(0 to 5);
		signal same:std_logic_vector(0 to 6);
begin
     comparador1:Comparador port map(
	     same=> '0',
		  a => numero1(4),
		  b => numero2(4),
		  cmp1 => tmpcmp1(0),
		  cmp2 => tmpcmp2(0),
		  sameout => same(0)
	  );
	  comparador2:Comparador port map(
	     same => same(0),
		  a => numero1(3),
		  b => numero2(3),
		  cmp1 => tmpcmp1(1),
		  cmp2 => tmpcmp2(1),
		  sameout => same(1)
	  );
	  comparador3:Comparador port map(
	     same => same(1),
		  a => numero1(2),
		  b => numero2(2),
		  cmp1 => tmpcmp1(2),
		  cmp2 => tmpcmp2(2),
		  sameout => same(2)
	  );
	  comparador4:Comparador port map(
	     same => same(2),
		  a => numero1(1),
		  b => numero2(1),
		  cmp1 => tmpcmp1(3),
		  cmp2 => tmpcmp2(3),
		  sameout => same(3)
	  );
	  comparador5:Comparador port map(
	     same => same(3),
		  a => numero1(0),
		  b => numero2(0),
		  cmp1 => tmpcmp1(4),
		  cmp2 => tmpcmp2(4),
		  sameout => same(4)
	  );
	  cmp1<=tmpcmp1(0) or tmpcmp1(1) or tmpcmp1(2) or tmpcmp1(3) or tmpcmp1(4);
	  cmp2<=tmpcmp2(0) or tmpcmp2(1) or tmpcmp2(2) or tmpcmp2(3) or tmpcmp2(4);
	
end comparadora;