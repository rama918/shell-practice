#!/bin/bash/

USERID=$(id -u)

if [ $USERID -ne 0 ] 
then
    echo "ERROR: please run this script with root access"
    exit 1
else
    echo "You are running with root access"
    fi

# validate functions takes input as exit status, what command they try to install
    VALIDTAE(){
    if [ $1 -eq 0 ]
then
    echo "Installing $2 is ... SUCCESS"
else
    echo "Installing $2 is ... FAILURE"
    exit 1
    
fi
    }

 dnf install installed mysql
 if [ $? -eq 0 ]
then
    echo "MYSQL is not installed... going to install it"
    dnf install mysql -Y
    VALIDATE $? "MYSQL"
else
    echo "mysql is already installed... nothing to do"
    exit 1
fi
dnf list installed python3

if [ $? -eq 0 ]
then
    echo "python3 is not installed... going to install it"
    dnf install python3 -Y
    VALIDATE $? "python3"
else
    echo "python3 is already installed... nothing to do"
    exit 1
fi
dnf list installed nginx


    if [ $? -eq 0 ]
then
    echo "nginx is not installed... going to install it"
    dnf install nginx -Y
    VALIDATE $? "nginx"
else
    echo "nginx is already installed... nothing to do"
    exit 1
fi
