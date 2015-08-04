#!/bin/bash

#
# eth0CfgDefault.sh - Config Default IP Address when rasp is starting UP
#	This script might to be run on startup.	
#
# Created by: Marco Tulio R Braga (https://github.com/mtulio/kb)
# Create date: 03 Aug 2015
#

sleep 5;

# Getting interface infos
ETH0_STATE=$(ip address show eth0  |head -n1 |awk -F'state ' '{print$2}' |awk '{print$1}')
ETH0_IPADDR=$(ip address show eth0  |grep inet |head -n1 |awk '{print$2}')

if [ "${ETH0_STATE}" == "UP" ];then
	echo "Interface ${ETH0_STATE} with IP Addr ${ETH0_IPADDR}"
else
	echo "Interface ${ETH0_STATE}, setting up default IP address"
	sudo ip address flush dev eth0
	sudo ip address add 192.168.200.254/24 dev eth0
	
	# SHow IP
	ETH0_IPADDR=$(ip address show eth0  |grep inet |head -n1 |awk '{print$2}')
	echo "Interface with IP Addr ${ETH0_IPADDR}"
	#echo -e "Subject: Rpi eth0 IP Address;\n Rpi IP is: ${ETH0_IPADDR}" |sendmail MAIL@TO
fi


exit 0;
