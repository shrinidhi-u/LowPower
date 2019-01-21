--
-- See LICENSE.txt for license details
--
property write_register is
disable iff: reset_n=0;

freeze:
    addr_f = addr_i @ t,
    data_f = if addr_f=command_addr_g then
                data_i(1 downto 0) -- command register has only 2 bits
             else
                data_i
             end if @ t;

assume:
  -- conceptual state
  at t: idle_state;

  -- trigger
  at t: read_access_i = '0';
  at t: write_access_i = '1';
  
prove:
  -- conceptual state
  at t+1: idle_state;
  at t +1 : ctrl_i/state ="00";
  -- outputs
  at t+1: bus_request_o = 0;
  at t+1: rdy_o = 1;

  at t+1: ram_idle;

  -- visible registers
  at t+1: foreach i in 0..4:
            if map_address(i) = addr_f then -- update selected register
               config_reg(map_address(i))=data_f
            else
               not changed(config_reg(map_address(i))) -- keep all others stable
            end if;
          end foreach;

right_hook: t+1;
end property;
