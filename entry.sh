#!/usr/bin/env bash

FILE=$1
TIMEOUT=${2:-60}

if [ "$1" == "" ]; then
   echo "Usage $(basename $0) <filename> <timeout>"
   exit 1
else
  echo -n "Waiting for $FILE"
fi

i=0
while [ $i -lt ${TIMEOUT} ] && [ ! -e "$FILE" ]; do
  i=$((i+1))
  sleep .5
  echo -n '.'
done

if [ ! -e "$FILE" ]; then
  echo -e "\nFile $FILE not found. Timeout exceeded!"
  exit 1
fi
