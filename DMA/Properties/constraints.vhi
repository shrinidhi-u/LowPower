--
-- See LICENSE.txt for license details
--
macro max_wait : unsigned := 10; end macro;

constraint bounded_wait :=
disable iff: reset_n=0;
  if (read_access_o = '1' or write_access_o = '1') then
    exists i in 0..max_wait :
      next(rdy_i, i) = '1';
    end exists
  end if;
end constraint;

-- neither source nor target region must wrap around
constraint no_addr_wrap :=
disable iff: reset_n=0;
  (config_reg(src_addr_addr_g) + config_reg(transfer_len_addr_g))(addr_msb_g+1)='0' and
  (config_reg(tgt_addr_addr_g) + config_reg(transfer_len_addr_g))(addr_msb_g+1)='0';
end constraint;

-- no unrequested grant
constraint no_unrequested_grant :=
disable iff: reset_n=0;
  if grant_i = '1' then
    bus_request_o = '1'
  end if;
end constraint;
