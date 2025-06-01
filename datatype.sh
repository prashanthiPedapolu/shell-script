#!/bin/bash
NAME=100
AGE=200
TIMESTAMP=$((date))
echo "script executed at $TIMESTAMP"
SUM=$(($NAME+$AGE))

ECHO "SUM of $NAME and $AGE IS: $SUM"