#!/bin/bash 
var=df | tr -s " " | cut -d " " -f5 | head -n2 | tail -n1 | cut -d "%" -f1
if [ "$var" > "80" ]
then
echo "storage alert" | mailx -s "Storage in / has exceed 80%" root@localhost.net
fi
