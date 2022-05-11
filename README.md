# ServerJAR
Clone this repository on your raspberry pi:
``
$ git clone https://github.com/lr101/ServerJAR.git
``
Setup your postgres database:
``
$ sudo apt-get install postgresql
``
Setup your database to our liking \\
\\
Edit the init.sh file:
``
$ nano init.sh
``
Change the username, password and postgres url string to match your setup \\
\\
Run the init.sh script to setup the webservice:
``
$ sudo ./init.sh
``
