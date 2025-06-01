#!/bin/bash
USERID=$(id -u)
if [ "USERID" -ne 0 ]
then
echo "Error: please continue with root access"
else
echo "you have root access to continue"
fi

dnf list installed mysql
if [ $? -ne 0 ]
then 
echo "mysql does not exist please install"
dnf install mysql -y
if [ $? eq 0 ]
then
echo "mysql is installed alredy success"
else
echo "mysql is already installed ....failure"
exit1
fi
else
echo "mysql is already installed nothing to do"
exite 1
fi