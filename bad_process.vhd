```vhdl
ENTITY bad_process IS
  PORT (clk : IN  STD_LOGIC;
        a : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
        b : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END ENTITY bad_process;

ARCHITECTURE behavioral OF bad_process IS

BEGIN
  PROCESS (clk) 
  BEGIN
    IF RISING_EDGE(clk) THEN
      b <= a + 1; 
    END IF;
  END PROCESS;
END ARCHITECTURE behavioral;
```