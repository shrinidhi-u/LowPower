--
-- See LICENSE.txt for license details
--
property nop is
disable iff: reset_n=0;


assume:
  -- conceptual state
  at t: idle_state;

  -- trigger
  at t: read_access_i = '0' and write_access_i = '0' and (grant_i = '0' or config_reg(command_addr_g)="00");

prove:
  -- conceptual state
  at t+1: idle_state;

  -- outputs
  at t+1: if config_reg(command_addr_g)(0) = '1' then
            bus_request_o = '1'
          else
            bus_request_o = '0'
          end if;
  at t+1: rdy_o = 0;

  at t+1: ram_idle;

  -- visible registers
  at t+1: foreach i in 0..4:
            config_reg(map_address(i)) = prev(config_reg(map_address(i)));
        end foreach;


right_hook: t+1;


end property;
