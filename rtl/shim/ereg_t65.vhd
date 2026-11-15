library IEEE;
use IEEE.std_logic_1164.all;
use work.pBus_savestates.all;
-- save register without a save bus: just the reset value
entity eReg_T65 is
  generic (Adr : integer range 0 to (2**BUS_busadr)-1; def : std_logic_vector(BUS_buswidth-1 downto 0));
  port (clk : in std_logic; BUS_Din : in std_logic_vector(BUS_buswidth-1 downto 0); BUS_Adr : in std_logic_vector(BUS_busadr-1 downto 0);
        BUS_wren : in std_logic; BUS_rst : in std_logic; BUS_Dout : out std_logic_vector(BUS_buswidth-1 downto 0);
        Din : in std_logic_vector(BUS_buswidth-1 downto 0); Dout : out std_logic_vector(BUS_buswidth-1 downto 0));
end entity;
architecture a of eReg_T65 is begin
  BUS_Dout <= (others => '0');
  Dout <= def;
end architecture;
