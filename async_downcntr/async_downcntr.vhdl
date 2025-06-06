library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sync_downcntr is
    port (
        clk  : in std_logic;
        rst  : in std_logic;
        Q    : out std_logic_vector(2 downto 0)
    );
end sync_downcntr;

architecture Behavioral of sync_downcntr is
    signal count : unsigned(2 downto 0) := "111";
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                count <= "111";
            else
                count <= count - 1;
            end if;
        end if;
    end process;

    Q <= std_logic_vector(count);
end Behavioral;
