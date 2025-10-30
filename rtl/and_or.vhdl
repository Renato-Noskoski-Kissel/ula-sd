--------------------------------------------------
--	Author:		Stella Silva Weege
--	Created:     	October 28, 2025
--
--	Project:     	Atividade Prática 3
--	Description: 	Contém a descrição de um componente que realiza as operações lógicas AND e OR
--			bit a bit de dois vetores de N bits.
--			O resultado `result` recebe AND quando o controle `CAO = '0'` e OR quando `CAO = '1'`.
--------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

-- AND/OR parametrizável para N bits.
entity and_or is
	generic(
		N : positive :=32 -- número de bits das entradas
	);
	port(
		input_a	: in std_logic_vector(N-1 downto 0); 	-- entrada A com N bits
		input_b	: in std_logic_vector(N-1 downto 0);	-- entrada B com N bits
		CAO	: in std_logic;				-- controle de AND/OR
		result	: out std_logic_vector(N-1 downto 0)	-- saída result com N bits
	);
end and_or;

architecture behavior of and_or is
begin
	result <= (input_a and input_b) when (CAO = '0') else (input_a or input_b);
end architecture behavior;
