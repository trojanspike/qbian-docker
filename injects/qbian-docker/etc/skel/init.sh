#!/usr/bin/env bash
COMMAND=$1 # if [$COMMD = start | stop | reload]

WORK_DIR=~/
PORT=8080

ENV="develop"

eth0=$(cat /sys/class/net/eth0/operstate); # up | down
wlan0=$(cat /sys/class/net/wlan0/operstate); # up | down

###

if [ "$COMMAND" == "start" ];then
	echo "Starting docker ui"
	docker start qbian-docker-ui-init
fi

if [ "$COMMAND" == "reload" ];then
	echo "reload" # cd ~/Server && npm run service-reload
fi

if [ "$COMMAND" == "stop" ];then
	echo "stop" # cd ~/Server && npm run service-stop
fi
