#! /bin/bash
while true; do
    ping -c 100 -i 2 -w 100 ping.sunet.se | while read pong; do echo "$(date): $pong"; done >> /stats/$(date +%Y%m%d).txt
done