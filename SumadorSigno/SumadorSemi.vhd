library ieee;
use ieee.std_logic_1164.all;
 
entity SumadorSemi is
port(
       a: in std_logic;
	    b: in std_logic;
	  cent:in std_logic;
	  cout: out std_logic;
	  suma: out std_logic);
end entity;

architecture sum of SumadorSemi is
    signal same,act,xnorr,xorr: std_logic;
begin
    act<=cent and( a or b); 
    cout<=(a and b)or act;
	 xorr<=(not cent) and( a xor b);
	 xnorr<= cent and(a xnor b);
	 suma<=xorr or xnorr;
end sum; 