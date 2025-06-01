#!/bin/bash
USERID=$(id -u)
if [ "$USERID" -ne 0]
then 
echo "Error: please continue with root access"
else 
echo "you are running script with root access"
fi