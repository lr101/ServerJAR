#!/bin/bash

git pull
java -cp updateDatabase -pull='true'
sudo systemctl restart server.service
java -cp updateDatabase -pull='false'