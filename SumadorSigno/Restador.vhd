library ieee;
use ieee.std_logic_1164.all;
 
entity Restador is
port(
       a: in std_logic;
	    b: in std_logic;
	  cent:in std_logic;
	  cout: out std_logic;
	  suma: out std_logic);
end entity;

architecture restador of Restador is
    signal same,act,xnorr,xorr: std_logic;
begin
    act<=cent and( not(a) or b); 
    cout<=(not(a) and b)or act;
	 suma<=((not cent) and (a xor b))or (cent and (a xnor b));
end restador; 