#!/bin/sh

cd /opt/ArcheoWebBlock
FILENAME="temporary.txt"

LINES=$(cat $FILENAME)

for LINE in $LINES
do
  sed -i "/$LINE/d" /etc/hosts
done
