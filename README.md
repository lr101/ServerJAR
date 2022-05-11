# ServerJAR
Clone this repository on your raspberry pi:
```
$ git clone https://github.com/lr101/ServerJAR.git
```
Setup your postgres database:
```
$ sudo apt-get install postgresql
```
Setup your database to your liking \
\
Run the init.sh script to setup the webservice:
```
$ sudo ./init.sh
```

### Debugging:

Logging can be tailed with the following command:
```
$ journalctl -u server.service -b -e -f
```


### Source code: https://github.com/lr101/SpringServer
