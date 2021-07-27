#!/bin/bash
source common.sh

echo Install catalogue
yum install nodejs make gcc-c++ -y &>>$LOG
status_check $?
echo ######################################


echo Add roboshop App User
id roboshop &>>$LOG
if [ $? -ne 0 ];then
useradd roboshop &>>$LOG
fi
status_check $?
echo ######################################


echo Download Application code
curl -s -L -o /tmp/catalogue.zip "https://github.com/roboshop-devops-project/catalogue/archive/main.zip" &>>$LOG
status_check $?
echo ######################################


echo extract downloaded code
cd /home/roboshop && unzip -o /tmp/catalogue.zip &>>$LOG && rm -rf catalogue && mv catalogue-main catalogue && cd /home/roboshop/catalogue
status_check $?
echo ######################################

echo install nodejs dependencies
npm install --unsafe-perm &>>$LOG
status_check $?
echo ######################################

echo Fix application user permission
chown roboshop:roboshop /home/roboshop -R &>>$LOG
status_check $?
echo ######################################

echo setup systemD file
sed -i -e "s/MONGO_DNSNAME/mongodb.roboshop.internal/" /home/roboshop/catalogue/systemd.service && mv /home/roboshop/catalogue/systemd.service /etc/systemd/system/catalogue.service
status_check $?
echo ######################################

echo start catalogue service
systemctl daemon-reload &>>$LOG && systemctl start catalogue &>>$LOG && systemctl enable catalogue &>>$LOG
status_check $?
echo ######################################