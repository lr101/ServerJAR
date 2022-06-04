#!/bin/bash

git pull

### changes to db ###


### ------------- ###
sudo systemctl restart server.service
journalctl -u server.service -b -e -f
