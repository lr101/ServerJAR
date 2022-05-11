#!/bin/bash
### ask for login details
tput setaf 6;printf "postgres username:"
read user
tput setaf 6;printf "postgres password:"
read password
tput setaf 6;printf "postgres port:"
read port
tput setaf 6;printf "postgres db name:"
read name

### write to service file
sudo cat > /etc/systemd/system/server.service << EOL
[Unit]
Description=Spring Server for sensors
After=network.target
StartLimitIntervalSec=0

[Service]
Restart=always
RestartSec=20
User=pi
Environment=DB_USER=$user
Environment=DB_PASSWORD=$password
Environment=DATASOURCE_URL=jdbc:postgresql://127.0.0.1:$port/$name
ExecStart=java -jar $PWD/SpringServer-1.jar

[Install]
WantedBy=multi-user.target
EOL
sudo systemctl start server.service
sudo systemctl enable server
sudo systemctl daemon-reload
