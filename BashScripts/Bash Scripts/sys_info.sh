#!/bin/bash

mkdir ~research2> /dev/null

echo "This is a title"
date
echo "The machine type info is $MACHTYPE" >> ~/research2/sys_info.txt
echo "The ip address is $(hostname -I)" >> ~/research2/sys_info.txt
echo "Uname infor : $(uname -a)" >> ~/research2/sys_info.txt
echo "The hostname of the machine is $HOSTNAME" >> ~/research2/sys_info.txt
echo -e "The DNS info for this machine is: \n $(cat /etc/resolv.conf) \n" >> ~/research2/sys_info.txt
echo -e "The Memory info for this machine is \n $(free) \n" >> ~/research2/sys_info.txt
echo -e "The CPU info is \n $(lscpu | grep CPU) \n" >> ~/research2/sys_info.txt
echo -e "The Disk Usage info is \n $(df -H | head -2) \n" >> ~/research2/sys_info.txt
echo -e "Who is logged in? \n $(who) \n" >> ~/research2/sys_info.txt
sudo find /home -type f -perm 777  >> ~/research2/sys_info.txt
ps aux -sort -%mem | awk {'print $1, $2, $3 ,$4, $11'} | head >> ~/research2/sys_info.txt

