macro ram_read(addr: expr): boolean :=
  read_access_o = '1' and
  write_access_o = '0' and
  lock_o = '1' and
  addr_o = addr;
end macro;

macro ram_write(addr, dat: expr): boolean :=
  read_access_o = '0' and
  write_access_o = '1' and
  lock_o = '0' and
  data_o = dat and
  addr_o = addr;
end macro;

macro ram_idle : boolean :=
  read_access_o = '0' and
  write_access_o = '0' and
  lock_o = '0';
end macro;

