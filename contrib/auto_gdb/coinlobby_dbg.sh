#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.coinlobbycore/coinlobbyd.pid file instead
coinlobby_pid=$(<~/.coinlobbycore/testnet3/coinlobbyd.pid)
sudo gdb -batch -ex "source debug.gdb" coinlobbyd ${coinlobby_pid}
