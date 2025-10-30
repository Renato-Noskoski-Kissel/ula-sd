--------------------------------------------------
--	Author:		Stella Silva Weege
--	Created:	October 28, 2025
--
--	Project:	Atividade Prática 3
--	Description:	Contém a descrição de um multiplexador 2 para 1 parametrizável para N bits.
--			A saída `s_mux` é igual a `in_0` quando `sel = '0'` e igual a `in_1`
--               	quando `sel = '1'`. As entradas e saídas são vetores com N bits. 	
--------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

-- Multiplexador 2:1 com entradas e saída de N bits.
-- A seleção é feita com base no sinal `sel`.
-- Se sel = '0', então s_mux = in_0; caso contrário, s_mux = in_1.
entity mux_2to1 is
	generic(
		N : positive := 32-- número de bits das entradas e da saída
	);
	port(
		sel        : in  std_logic;                        -- sinal de seleção
		in_0, in_1 : in  std_logic_vector(N - 1 downto 0); -- entradas do mux
		s_mux      : out std_logic_vector(N - 1 downto 0)  -- saída do mux
	);
end mux_2to1;

architecture behavior of mux_2to1 is
begin
    s_mux <= in_0 when sel = '0' else in_1; -- realiza a seleção e atribui o valor selecionada à saída `s_mux`
end architecture behavior;
