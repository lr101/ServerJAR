#!/bin/bash

git pull
### changes to db ###


### ------------- ###
java -cp updateDatabase -pull='true'
sudo systemctl restart server.service
java -cp updateDatabase -pull='false'
journalctl -u server.service -b -e -f
