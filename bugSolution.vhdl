```vhdl
entity counter is
  Port ( clk : in  STD_LOGIC;
              rst : in  STD_LOGIC;
              count : out  integer range 0 to 15;
              overflow : out std_logic );
end entity;

architecture behavioral of counter is

  signal temp : integer range 0 to 15 := 0;
  signal ovfl : std_logic := '0';
begin

process (clk, rst)
begin
  if (rst = '1') then
    temp <= 0;
    ovfl <= '0';
  elsif (rising_edge(clk)) then
    if temp = 15 then
      ovfl <= '1';
    else
      temp <= temp + 1;
      ovfl <= '0';
    end if;
  end if;
end process;

count <= temp;
overflow <= ovfl;
end architecture;
```