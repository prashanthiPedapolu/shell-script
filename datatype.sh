#!/bin/bash
NAME=100
AGE=200
TIMESTAMP=$((date))
echo "script executed at $TIMESTAMP"
SUM=$(($NAME+$AGE))

echo "SUM of $NAME and $AGE is: $SUM"