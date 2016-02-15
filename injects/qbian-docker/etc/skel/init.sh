#!/usr/bin/env bash
COMMAND=$1 # if [$COMMD = start | stop | reload]

ENV="develop"

eth0=$(cat /sys/class/net/eth0/operstate); # up | down
wlan0=$(cat /sys/class/net/wlan0/operstate); # up | down

###

if [ "$COMMAND" == "start" ];then
	echo "Start"
	# a qucik script to install docker ui and run at start up
	if [ ! -f ~/docker-ui-installed ];then
		~/bin/docker-ui && touch ~/docker-ui-installed
	else
		docker start docker-ui-init
	fi
fi

if [ "$COMMAND" == "reload" ];then
	echo "reload" # cd ~/Server && npm run service-reload
fi

if [ "$COMMAND" == "stop" ];then
	echo "stop" # cd ~/Server && npm run service-stop
fi
