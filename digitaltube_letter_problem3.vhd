library ieee;
use ieee.std_logic_1164.all;

entity seg_letters is
    port (
        sel : in  std_logic_vector(2 downto 0);
        seg : out std_logic_vector(6 downto 0) -- gfedcba
    );
end seg_letters;

architecture behavioral of seg_letters is
begin
    process(sel)
    begin
        -- 비트 순서: "gfedcba" (1: 켜짐, 0: 꺼짐)
        case sel is
            when "000" => seg <= "1110111"; -- A
            when "001" => seg <= "1111100"; -- b
            when "010" => seg <= "0111001"; -- C
            when "011" => seg <= "1011110"; -- d
            when "100" => seg <= "1110001"; -- F
            when "101" => seg <= "0111101"; -- G
            when others => seg <= "0000000"; -- OFF
        end case;
    end process;
end behavioral;