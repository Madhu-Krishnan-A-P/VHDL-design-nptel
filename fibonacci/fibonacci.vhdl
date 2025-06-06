library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fibo_checker is
    port (
        x : in std_logic_vector(9 downto 0);
        Y : out std_logic
    );
end fibo_checker;

architecture Behavioral of fibo_checker is

    constant MAX_FIB : integer := 17;
    type fib_array_type is array (0 to MAX_FIB - 1) of unsigned(9 downto 0);

    -- Function to generate fibonacci array combinationally
    function generate_fib_array return fib_array_type is
        variable fibs : fib_array_type := (others => (others => '0'));
        variable i : integer := 2;
        variable next_fib : unsigned(9 downto 0);
    begin
        fibs(0) := to_unsigned(0, 10);
        fibs(1) := to_unsigned(1, 10);
        while i < MAX_FIB loop
            next_fib := fibs(i-1) + fibs(i-2);
            if next_fib > to_unsigned(1023, 10) then
                exit;
            end if;
            fibs(i) := next_fib;
            i := i + 1;
        end loop;
        return fibs;
    end function;

    constant fib_array : fib_array_type := generate_fib_array;

begin

    process(x)
        variable found : std_logic := '0';
        variable val   : unsigned(9 downto 0);
    begin
        val := unsigned(x);
        found := '0';
        for i in 0 to MAX_FIB - 1 loop
            if val = fib_array(i) then
                found := '1';
            end if;
        end loop;
        Y <= found;
    end process;

end Behavioral;
