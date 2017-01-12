#!/bin/bash
#Send out file from local directory to remote server.
#Variables
declare PROCESSNAME
declare SAPSERVER
declare SAPJOB
declare REMOTEPATH
declare FILENAME
declare OPTIONS="JOB PATH Quit"
#
#Ask for the selection criteria.
printf 'Please make a chocie for selection criteria job or remote path.\n'
select opt in $OPTIONS; do
	if [ "$opt" == "JOB" ]; then
	       printf 'Introduce the Job name:\n'
       	       read SAPJOB
	       printf  'This is the sap job that You have selecetd:\n' 
	       echo $SAPJOB
	elif [ "$opt" == "PATH" ]; then
	       printf 'Introduce the remote path:\n'
	       read REMOTEPATH
	       printf 'This is the remote path that You have selected:\n'"$REMOTEPATH" 
	elif [ "$opt" == "Quit" ]; then
		printf 'Adios...\n'
		exit
	else
		printf 'Please select an option from menu\n'
	fi
done


