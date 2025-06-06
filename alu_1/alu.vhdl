library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.Gates.all;

entity ALU is
    Port (
        A : in STD_LOGIC_VECTOR(3 downto 0);
        B : in STD_LOGIC_VECTOR(3 downto 0);
        Y : out STD_LOGIC_VECTOR(5 downto 0)
    );
end ALU;

architecture Behavioral of ALU is
    signal S 		: STD_LOGIC_VECTOR(1 downto 0); -- S1 S0 = B(3) A(3)
    signal result : STD_LOGIC_VECTOR(3 downto 0);
    signal extended_result : STD_LOGIC_VECTOR(5 downto 0);
begin

    S <= B(3) & A(3);  -- Selector lines for the multiplexer

process(A, B, S)
    variable temp : STD_LOGIC_VECTOR(3 downto 0);
    variable rotate_amt : INTEGER;
begin
    case S is
        when "00" =>  -- MAX(A, B)
            if A > B then
                temp := A;
            elsif B > A then
                temp := B;
            else
                temp := (others => '0');
            end if;

        when "01" =>  -- AND A B
            temp := A and B;

        when "10" =>  -- Rotate A by B bits
            rotate_amt := to_integer(unsigned(B(1 downto 0)));
            if B(3) = '0' then  -- Left rotate
                temp := std_logic_vector(shift_left(unsigned(A), rotate_amt) or
                                         shift_right(unsigned(A), 4 - rotate_amt));
            else  -- Right rotate
                temp := std_logic_vector(shift_right(unsigned(A), rotate_amt) or
                                         shift_left(unsigned(A), 4 - rotate_amt));
            end if;

        when others =>  -- Eq(A,B)
            if A = B then
                temp := A;
            else
                temp := (others => '0');
            end if;
    end case;

    extended_result <= "00" & temp;
end process;

  Y <= extended_result;

end Behavioral;