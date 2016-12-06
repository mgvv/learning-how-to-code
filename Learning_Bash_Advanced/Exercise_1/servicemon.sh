#!/bin/bash
#Monitors availability of a service
#####exit code documentation
# 3: no argument provided
# 4: Services is not running
#####
#make sure that service name is provided as an argument
if [ -z $1 ]; then
	echo "You need to provide a service name when starting this script"
	exit 3
else
	SERVICE=$1
fi
#fun without stoppping to do the monitoring task
#Subtask:
#verify that $SERVICE is running
if ps -aux | grep $SERVICE | egrep -v "grep | servicemon.sh" 
then
	echo all good
else
	echo $SERVICE could not be found as a process
	echo Make sure that $SERVICE is running and try again
	echo 'The command ps aux | grep ' $SERVICE ' should show the service up and running'
	exit 4
fi
#Monitor $SERVICE
while ps -aux | grep $SERVICE | egrep -v "grep | servicemon.sh"▸
do 
	sleep 10
do
#actions if services is falling
#Sin completar
