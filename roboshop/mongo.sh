#!/bin/bash
source common.sh


echo "Setting up repository"

echo '[mongodb-org-4.2]
name = MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/4.2/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.2.asc'>/etc/yum.repos.d/mongodb.repo
status_check $?

echo Install Mongodb
yum install -y mongodb-org &>>$LOG
status_check $?

echo Mongodb Listen Address
sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf
status_check $?


echo start Mongodb
systemctl enable mongod &>>$LOG && systemctl start mongod &>>$LOG
Update Liste IP address from 127.0.0.1 to 0.0.0.0 in config file
status_check $?

echo Download MongoDB schema
curl -s -L -o /tmp/mongodb.zip "https://github.com/roboshop-devops-project/mongodb/archive/main.zip" &>>$LOG
status_check $?

echo load schema
cd /tmp && unzip -o mongodb.zip && cd mongodb-main && mongo < catalogue.js && mongo < users.js
status_check $?