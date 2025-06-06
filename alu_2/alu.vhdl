library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu_beh is
    port (
        A   : in std_logic_vector(3 downto 0);
        B   : in std_logic_vector(3 downto 0);
        sel : in std_logic_vector(1 downto 0);
        op  : out std_logic_vector(7 downto 0)
    );
end alu_beh;

architecture a1 of alu_beh is

    function sub(A: std_logic_vector(3 downto 0); B: std_logic_vector(3 downto 0)) 
        return std_logic_vector is
        variable diff  : std_logic_vector(3 downto 0) := (others => '0');
        variable carry : std_logic_vector(4 downto 0) := (others => '0');
        variable upper_bits : std_logic_vector(3 downto 0);
        variable result_signed : signed(7 downto 0);
    begin
        carry := (others => '0');
        for i in 0 to 3 loop
            diff(i) := A(i) xor B(i) xor carry(i);
            carry(i+1) := (not A(i) and B(i)) or ((not A(i) or B(i)) and carry(i));
        end loop;

        if carry(4) = '1' then
            upper_bits := (others => '1');
        else
            upper_bits := (others => '0');
        end if;

        result_signed := signed(upper_bits & diff);
        return std_logic_vector(result_signed);
    end sub;

    function concat(A: std_logic_vector(3 downto 0); B: std_logic_vector(3 downto 0)) return std_logic_vector is
    begin
        return A & B;
    end concat;

    function xor_ab(A: std_logic_vector(3 downto 0); B: std_logic_vector(3 downto 0)) return std_logic_vector is
    begin
        return (3 downto 0 => '0') & (A xor B);
    end xor_ab;

    function shift_ab(A: std_logic_vector(3 downto 0); B: std_logic_vector(3 downto 0)) return std_logic_vector is
        variable shift_amt : integer range 0 to 3 := to_integer(unsigned(B(1 downto 0)));
        variable result    : std_logic_vector(3 downto 0);
        constant zero_4bit : std_logic_vector(3 downto 0) := (others => '0');
    begin
        if B(3) = '0' then
            result := std_logic_vector(shift_left(unsigned(A), shift_amt));
        else
            result := std_logic_vector(shift_right(unsigned(A), shift_amt));
        end if;
        return zero_4bit & result;
    end shift_ab;

begin

    alu : process(A, B, sel)
    begin
        case sel is
            when "00" =>
                op <= concat(A, B);
            when "01" =>
                op <= sub(A, B);
            when "10" =>
                op <= xor_ab(A, B);
            when "11" =>
                op <= shift_ab(A, B);
            when others =>
                op <= (others => '0');
        end case;
    end process;

end a1;