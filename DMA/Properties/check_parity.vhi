--
-- See LICENSE.txt for license details
--
property check_parity is
disable iff: reset_n=0;
dependencies: no_addr_wrap, bounded_wait;

for timepoints:
  t_req=t+1,
  t_read_ack = t_req + 0..max_wait waits_for complete rdy_i = '1';

freeze:
  -- values of visible register at left hook
  src_addr_f       = config_reg(src_addr_addr_g) @ t,
  tgt_addr_f       = config_reg(tgt_addr_addr_g) @ t,
  transfer_len_f   = config_reg(transfer_len_addr_g) @ t,
  command_f        = config_reg(command_addr_g) @ t,
  data_f           = data_i @ t_read_ack,
  continue_acc_f   = transfer_len_f > 1 @ t,
  parity_result_f  = config_reg(parity_addr_g) xor data_f @ t,
  new_parity_value = if command_f(1)= '1' then
                       parity_result_f
                     else
                       config_reg(parity_addr_g)
                     end if @ t;

assume:
  -- conceptual state
  at t: idle_state;

  -- trigger  
  at t: grant_i = '1';
  at t: read_access_i = '0';
  at t: write_access_i = '0';
  at t: config_reg(command_addr_g)="10";
  
prove:
  at t: data_path_i/update_data_s='0';
  at t: data_path_i/update_addr_s='0';
  -- conceptual state
  at t_read_ack+1: idle_state;

  -- outputs
  during [t+1, t_read_ack]:         ram_read(src_addr_f);
  at t_read_ack+1:                  ram_idle;

  during [t+1, t_read_ack+1]: rdy_o = '0';
  during [t+1, t_read_ack+1]: if continue_acc_f then
                                 bus_request_o = '1'
                               else
                                 bus_request_o = '0'
                               end if;

  -- visible registers
  at t_read_ack+1: if continue_acc_f then
                      config_reg(command_addr_g) = command_f and
                      config_reg(src_addr_addr_g) = src_addr_f + 1 and
                      config_reg(tgt_addr_addr_g) = tgt_addr_f + 1 and
                      config_reg(transfer_len_addr_g) = transfer_len_f - 1
                    else
                      config_reg(command_addr_g) = 0 and
                      config_reg(src_addr_addr_g) = src_addr_f and
                      config_reg(tgt_addr_addr_g) = tgt_addr_f and
                      config_reg(transfer_len_addr_g) = transfer_len_f
                    end if;
  at t_read_ack+1: config_reg(parity_addr_g) = new_parity_value;

--during[t, t_read_ack]: op_property=check_parity_p;
--during[t, t_read_ack-1]: op_timecode = zero;
--at t_read_ack: op_timecode= t_read_ack_tp;

right_hook: t_read_ack+1;
end property;
