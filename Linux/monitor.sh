#!/bin/bash

echo "|- - - - - - - - - - - - - - - - - - - - - - |"
echo "|NEKE MONITORING SCRIPT FOR HTTPD SERVICE|"
echo "|- - - - - - - - - - - - - - - - - - - - - - |"

ls /var/run/httpd/httpd.pid &> /dev/null

if [ $? -eq 0 ]
then
        echo "HTTPD Process is running"
else
        echo "Httpd is not running"
        echo "Starting HTTPD"
        systemctl start httpd
        if [ $? -eq 0 ]
        then
                echo "Again starting the httpd service"
                echo "started !!!!"
        else
                echo "Process is failed to Start, debug manually"
        fi
fi
tim=$(date)
echo "Time of execution is $tim"
echo "|- - - - - - - - - - - - - - - - - - - - - - |"




# after writing this file open your command line and enter the below cmd to automate this
# crontab -e
# this open a empty crontab file
# enter
# "minute" "hour" "date-of-month" "month" "day-of-weak"
#Eg: 30 20 * * 1-5 [ mon-fri every month and every day (*) runs at 8:30pm]
#command is timing and location of the script
# * * * * * /opt/scripts/monit.sh &>>/var/log/monit.log
