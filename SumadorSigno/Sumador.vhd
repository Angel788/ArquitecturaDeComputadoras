library ieee;
library work;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity sumador is 
	port (
		a: in std_logic_vector(0 TO 4);
		b: in std_logic_vector(0 TO 4);
		clk:in std_logic;
		s:out std_logic_vector(0 to 4);
		signos: out std_logic
	);
end sumador;

architecture sum of sumador is
	 signal sumador,restador1,restador2: std_logic_vector(0 TO 4);
	 signal registro11,registro22,registro11n,registro22n: std_logic_vector(0 to 4);
	 signal may:std_logic_vector(0 to 1);
	 signal registros,resgistrosn: std_logic_vector(0 to 5);
	 signal operacion: std_logic_vector(0 to 5);
	 signal clk1: std_logic;
begin
    Clock_Divider1: Clock_Divider port map(
	   clk => clk,
		clock_out=> clk1
	 );
	 registronumero1: registroNumero port map(
	     data => a,
		  clk => clk1,
		  readdata=> registro11,
		  readdatan => registro11n
	 );
	 registronumero2: registroNumero port map(
	     data => b,
		  clk => clk1,
		  readdata=> registro22,
		  readdatan => registro22n
	 );
    comparador1:comparadorVector port map(
	    numero1 => registro11,
		 numero2 => registro22,
		 cmp1 =>may(0),
		 cmp2 =>may(1)
	 );
	 sumador1:sumadorV port map(
	    a=> registro11(1 to 4),
		 b => registro22(1 to 4),
		 s => sumador
	 );
	 restador11:restadorV port map(
	    a=> registro11(1 to 4),
		 b => registro22(1 to 4),
		 s => restador1
	 );
	 restador22:restadorV port map(
	    a=> registro22(1 to 4),
		 b => registro11(1 to 4),
		 s => restador2
	 );
	  sumarnums: process(may)
	 begin 
	      if(may="00") then
			   operacion(0 to 4)<=sumador;
		      operacion(5)<=registro11(0);		
			else if(may="10")then
			    if((registro11(0) xor registro22(0))='1')then
				     operacion(0 to 4)<=restador1;
					  operacion(5)<=registro11(0);
				 else 
				    operacion(0 to 4)<=sumador;
					 operacion(5)<=registro11(0);
				 end if;
			else 
			    if((registro11(0) xor registro22(0))='1')then
				     operacion(0 to 4)<=restador2;
					  operacion(5)<=registro22(0);
				 else 
				    operacion(0 to 4)<=sumador;
					 operacion(5)<=registro22(0);
				 end if;
			end if;
			end if;
	 end process;
	 ressss: RegistroResultado port map(
	    data =>operacion,
		 clock =>clk1,
		 readdata => registros,
		 readdatan => resgistrosn
	 );
	 s<=registros(0 to 4);
	 signos<=registros(5);
end sum; 