--
-- See LICENSE.txt for license details
--

------------------------------------------------------------------------------------
-- Original version modified by Shrinidhi Udupi (udupi@eit.uni-kl.de) 
-- on 17-01-2019
------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use work.dma_types.all;
use ieee.numeric_std.all;
use work.monitor_pkg.all;
entity ctrl is 
generic (
    chk_parity_g: integer := 0;
    addtl_busy_state_g: integer := 0);
port(
    reset_n: in std_logic;
    clk:     in std_logic;

    grant_i:        in std_logic;
    read_access_i:  in std_logic;
    write_access_i: in std_logic;
    rdy_i:          in std_logic;

    bus_request_o:  out std_logic;
    read_access_o:  out std_logic;
    write_access_o: out std_logic;
    lock_o:         out std_logic;
    rdy_o:          out std_logic;

    -- from/to data
    command_s:        in  std_logic_vector(1 downto 0);
    last_access_s:    in  std_logic;
    update_addr_s:    out std_logic;
    update_data_s:    out std_logic;
    address_select_s: out std_logic;
    data_select_s:    out std_logic;
    reset_command_s:  out std_logic;
    read_reg_s:       out std_logic;
    write_reg_s:      out std_logic;
    op_property:       in std_logic_vector(3 downto 0);
    op_timepoint :     in std_logic_vector(1 downto 0)
);
end ctrl;

architecture rtl of ctrl is
constant	 nop_c 			: std_logic_vector(2 downto 0) :=	 "000";
constant	 check_parity_c 	: std_logic_vector(2 downto 0) :=	 "001";
constant	 read_register_c	: std_logic_vector(2 downto 0) :=	 "010";
constant	 transfer_c		: std_logic_vector(2 downto 0) :=	 "011";
constant	 write_register_c	: std_logic_vector(2 downto 0) :=	 "100";
constant	 zero_c 		: std_logic_vector(1 downto 0) :=	 "00";
constant	 t_read_ack_c		: std_logic_vector(1 downto 0) :=	 "01";
constant	 t_write_req_c		: std_logic_vector(1 downto 0) :=	 "10";
constant	 one_c			: std_logic_vector(1 downto 0) :=	 "11";

  signal state, n_state: state_type;
  signal bus_request_s, read_access_s, 
         write_access_s, lock_s, rdy_s: std_logic;
  signal ENABLE_BRQ,ENABLE_LOCK,ENABLE_RDACS,ENABLE_RDY,ENABLE_STATE1,ENABLE_WRACS : std_logic;


signal enable : enable_array;


begin
   enable <=not(LUT(to_integer(unsigned(op_property)),to_integer(unsigned(op_timepoint))));
   ENABLE_BRQ <= enable(0);
   ENABLE_LOCK<= '1';
   ENABLE_RDY  <=enable(1);
   ENABLE_RDACS<=enable(2);
   ENABLE_WRACS <= enable(5);
   
  process(state, read_access_i, write_access_i, command_s, 
          last_access_s, rdy_i, grant_i)
  begin
    lock_s <= '0';
    rdy_s <= '0';
    read_access_s <= '0';
    write_access_s <= '0';
    update_addr_s <= '0';
    update_data_s <= '0';
    n_state <= state; 
    address_select_s <= '0'; -- switches between src_addr('0') and tgt_addr ('1')
    data_select_s <= '0';    -- '0': data_reg, '1' cfg_reg;
    reset_command_s <= '0';
    bus_request_s <= '0';
    read_reg_s <= '0';
    write_reg_s <= '0';
    
    case state is
    when idle =>
          -- handle read/write requests. when grant: read, then goto read_wait
        if read_access_i = '1' then
            rdy_s         <= '1';
            read_reg_s    <= '1';
            data_select_s <= '1';
        elsif write_access_i = '1' then
            rdy_s       <= '1';  
            write_reg_s <= '1';
        elsif addtl_busy_state_g = 1 and
              (command_s(transfer_mem) = '1' or (chk_parity_g /= 0 and command_s(extra_compute) = '1')) then
            bus_request_s <= '1';
            n_state <= busy;
        elsif addtl_busy_state_g = 0 and grant_i = '1' and
              (command_s(transfer_mem) = '1' or (chk_parity_g /= 0 and command_s(extra_compute) = '1')) then
            lock_s <= '1';
            read_access_s <= '1';
            bus_request_s <=  not last_access_s;
            n_state <= read_wait;
        else
            bus_request_s <= command_s(transfer_mem);
        end if;
    when read_wait =>
        -- wait for rdy_i, then write
        bus_request_s <= not last_access_s;
        if rdy_i = '1' then
            update_data_s <= '1';
            if command_s(1 downto 0) = "10" then
                if addtl_busy_state_g=1 and last_access_s='0' then
                   n_state <= busy;
                else
                   n_state <= idle;
                end if;
                update_addr_s <= not last_access_s;
                reset_command_s <= last_access_s;
            else
                n_state <= write_wait;
                address_select_s <= '1';
                write_access_s <= '1';
                data_select_s <= '0';
            end if;
        else
            lock_s <= '1';
            read_access_s <= '1';       
        end if;
    when write_wait =>
        if rdy_i = '1' then
            if last_access_s = '1' then
                reset_command_s <= '1';
                bus_request_s <= '0';
                n_state <= idle;
            else
                update_addr_s <= '1';   
                bus_request_s <= '1';
                if addtl_busy_state_g = 1 then
                    n_state <= busy;
                else
                    n_state <= idle;
                end if;
                
            end if;
        else
            address_select_s <= '1';
            write_access_s <= '1';
            data_select_s <= '0';
            bus_request_s <= not last_access_s;
        end if;
   when busy =>
        if grant_i = '1' then
            lock_s <= '1';
            read_access_s <= '1';
            bus_request_s <= not last_access_s;
            n_state <= read_wait;
        else
            bus_request_s <= command_s(transfer_mem);
        end if;
    end case;
  end process;

  process(clk, reset_n) 
  begin
    if reset_n = '0' then
        state <= idle;
        rdy_o <= '0';
        read_access_o <= '0';
        write_access_o <= '0';
        bus_request_o <= '0';
        lock_o <= '0';
    elsif (clk'event and clk = '1') then
        state <= n_state;
    if ENABLE_RDY = '1' then
        rdy_o <= rdy_s;
    end if;
    if ENABLE_RDACS ='1' then
        read_access_o <= read_access_s;
	lock_o <= lock_s;
    end if;

    if ENABLE_WRACS ='1' then
        write_access_o <= write_access_s;
    end if;

    if ENABLE_BRQ ='1' then
        bus_request_o <= bus_request_s;
    end if;

    end if;
  end process;

end rtl;
