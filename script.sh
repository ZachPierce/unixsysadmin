#! /bin/bash
for i in `cat users.txt`

do
useradd $i 
echo $i"TleN5844!" | passwd --stdin "$i" 
done
