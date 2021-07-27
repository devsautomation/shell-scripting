#!/bin/bash

USER_ID=$(id -u)
if [ $USER_ID -ne 0 ];then
echo you shouls be root user to run the script
exit 2
fi


LOG=/tmp/roboshop.log
rm -f $LOG

status_check()
{
if [ $1 -eq 0 ];then
echo done
else
echo  fail
echo check the log file more details, Log File - $LOG
exit 1
fi
}
