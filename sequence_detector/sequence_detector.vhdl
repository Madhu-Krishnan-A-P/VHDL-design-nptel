library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity students is
    port(
        inp   : in std_logic_vector(4 downto 0);
        reset : in std_logic;
        clock : in std_logic;
        outp  : out std_logic
    );
end students;

architecture bhv of students is

    type state is (rst, s1, s2, s3, s4, s5, s6, s7);
    signal y_present, y_next : state := rst;

begin

    clock_proc: process(clock)
    begin
        if rising_edge(clock) then
            if reset = '1' then
                y_present <= rst;
            else
                y_present <= y_next;
            end if;
        end if;
    end process;

    state_transition_proc: process(y_present, inp)
        variable inp_u : unsigned(4 downto 0);
    begin
        inp_u := unsigned(inp);

        case y_present is
            when rst =>
                if inp_u = to_unsigned(19,5) then    -- 's'
                    y_next <= s1;
                else
                    y_next <= rst;
                end if;

            when s1 =>
                if inp_u = to_unsigned(20,5) then    -- 't'
                    y_next <= s2;
                else
                    y_next <= s1;
                end if;

            when s2 =>
                if inp_u = to_unsigned(21,5) then    -- 'u'
                    y_next <= s3;
                else
                    y_next <= s2;
                end if;

            when s3 =>
                if inp_u = to_unsigned(4,5) then     -- 'd'
                    y_next <= s4;
                else
                    y_next <= s3;
                end if;

            when s4 =>
                if inp_u = to_unsigned(5,5) then     -- 'e'
                    y_next <= s5;
                else
                    y_next <= s4;
                end if;

            when s5 =>
                if inp_u = to_unsigned(14,5) then    -- 'n'
                    y_next <= s6;
                else
                    y_next <= s5;
                end if;

            when s6 =>
                if inp_u = to_unsigned(20,5) then    -- 't'
                    y_next <= s7;
                else
                    y_next <= s6;
                end if;

            when s7 =>
                if inp_u = to_unsigned(19,5) then    -- 's'
                    y_next <= s1;                    --output '1'
                else
                    y_next <= s7;
                end if;

            when others =>
                y_next <= rst;
        end case;
    end process;

    output_proc: process(y_present, inp)
        variable inp_u : unsigned(4 downto 0);
    begin
        inp_u := unsigned(inp);
        if (y_present = s7) and (inp_u = to_unsigned(19,5)) then
            outp <= '1';
        else
            outp <= '0';
        end if;
    end process;

end bhv;
