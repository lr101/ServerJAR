#!/bin/bash

git pull
tput setaf 6;printf "update database?"
read update
sed -i '10iEnvironment=update=$update' /etc/systemd/system/server.service
sudo systemctl restart server.service
sed '10d' /etc/systemd/system/server.service
journalctl -u server.service -b -e -f
