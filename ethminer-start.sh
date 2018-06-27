#!/usr/bin/env bash
ps cax | grep ethminer > /dev/null
if [ $? -eq 0 ]; then
  echo "Ethminer is already running."
else
  echo "Ethminer being launched"
nohup <path-to-ethminer>/ethminer -G -U \
	-S "<your-pool>" \
	>> /var/log/miner.log 2>&1 </dev/null & echo $! > /var/run/miner.pid & sleep 10
fi
