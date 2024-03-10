library ieee;
library work;
use ieee.std_logic_1164.all;
use work.all;

entity Comparador is 
	port (
	     same: in std_logic;
		  a: in std_logic;
		  b: in std_logic;
		  cmp1: out std_logic;
		  cmp2: out std_logic;
		  sameout: out std_logic
	);
end Comparador;

architecture Comparador of Comparador is
begin
   cmp1<=(not(same))and a and(not b);
	cmp2<=(not(same))and (not a) and b;
   sameout<=((not same)and(a xor b)) or same;	
	
end Comparador;