#!/bin/bash
MOVIES=("hit1" "hit2" "hit3" "hit4" "hit5" "rrr")
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

echo "script executed: $TIMESTAMP"
echo "all movies: ${MOVIES[0]}"
echo "all movies: ${MOVIES[1]}"
echo "all movies: ${MOVIES[2]}"
echo "all movies: ${MOVIES[3]}"
echo "all movies: ${MOVIES[4]}"

echo "list all movies: ${MOVIES[@]}"