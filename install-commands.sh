#!/bin/bash
USERID=$(id -u)
if [ "$USERID" -ne 0 ]
then 
echo "Error: please continue with root access"
exit 1
else 
echo "you are running script with root access"
exit 0
fi