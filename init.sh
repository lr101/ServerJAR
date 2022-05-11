#!/bin/bash
sudo cat > /etc/systemd/system/server.service << EOL
[Unit]
Description=Spring Server for sensors
After=network.target
StartLimitIntervalSec=0

[Service]
Restart=always
RestartSec=20
User=pi
Environment=DB_USER=[user]    #TODO
Environment=DB_PASSWORD=[psw] #TODO
Environment=DATASOURCE_URL=jdbc:postgresql://127.0.0.1:5432/postgres
ExecStart=java -jar $PWD/SpringServer-1.jar

[Install]
WantedBy=multi-user.target
EOL
sudo systemctl start server.service
sudo systemctl enable server
sudo systemctl daemon-reload