#!/bin/bash

case $1 in
    start)
        /bin/bash /home/pi/stuff/start.sh
    ;;
    stop)
        /bin/bash /home/pi/stuff/stop.sh  
    ;;
    restart)
        /bin/bash /home/pi/stuff/stop.sh
        /bin/bash /home/pi/stuff/start.sh
    ;;
esac
exit 0
