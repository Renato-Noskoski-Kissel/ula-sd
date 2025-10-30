--------------------------------------------------
--	Author:		Stella Silva Weege
--	Created:     	October 28, 2025
--
--	Project:     	Atividade Prática 3
--	Description: 	Contém a descrição de um somador/subtrator de dois valores com sinal de N bits.
--			Realiza a soma quando o controle `CS = '0'` e a subtração quando `CS = '1'`.
--               	Todas as portas de dados utilizam o tipo `signed`. O controle é std_logic.
--------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Somador/subtrator com sinal (signed) parametrizável para N bits.
-- Calcula input_a + input_b se `CS = '0'` e 
-- input_a - input_b quando `CS = '1'`.
entity adder_subtractor is
	generic(
		N : positive := 32 -- número de bits das entradas e da saída
	);
	port(
		input_a : in  signed(N - 1 downto 0); 	-- entrada A com N bits com sinal
		input_b : in  signed(N - 1 downto 0); 	-- entrada B com N bits com sinal
		CS: in std_logic; 			-- controle do somador/subtrator
		result  : out signed(N-1 downto 0)      -- saída da soma com sinal
	);
end adder_subtractor;

architecture behavior of adder_subtractor is
begin
    result <= (input_a + input_b) when (CS = '0') else (input_a - input_b);
end architecture behavior;
