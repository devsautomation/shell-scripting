#!/bin/bash
source common.sh

echo "Enabling nginx"
yum install nginx -y &>>$LOG
status_check $?

echo "Download Frontend"
curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip" &>>$LOG
status_check $?


echo "remove old htdocs"
cd /usr/share/nginx/html &>>$LOG && rm -rf * &>>$LOG
status_check $?

echo "Extract front end archieve AND MOVE TO DESIRED LOCATION"
unzip /tmp/frontend.zip &>>$LOG &&mv frontend-main/* . &>>$LOG && mv static/* . &>>$LOG && rm -rf frontend-master static &>>$LOG
status_check $?

echo "copy roboshop config"
mv localhost.conf /etc/nginx/default.d/roboshop.conf &>>$LOG
status_check $?

echo "update roboshop config"
sed -i -e '/catlogue/ s/localhost/catlogue.roboshop.internal/' /etc/nginx/default.d/roboshop.conf
status_check $?

echo "Enabling nginx"
systemctl enable nginx &>>$LOG
status_check $?


echo "Starting nginx"
systemctl start nginx &>>$LOG
status_check $?