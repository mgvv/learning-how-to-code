#!/bin/bash
#Send out file from local directory to remote server.
#Variables
declare PROCESSNAME
declare SAPSERVER
declare SAPJOB
declare REMOTEPATH
declare INDICIUMPATH
declare FILENAME
declare OPTIONS
#
INDICIUMPATH="/home/mgw/Documents/Extra/learning-how-to-code/Learning_Bash_Advanced/prototypum/statum/indicium.txt"
function buscarCadena () {
# Se verifica que el fichero existe y la cadena no es nula
if [[ -n $SAPJOB ]] &&  [[ -n $INDICIUMPATH ]]; then
	
	else
echo Falta de parametros.
fi
}
#Ask for the selection criteria.
printf 'Please make a chocie for selection criteria job or remote path.\n'
#Menu options
OPTIONS="JOB PATH Quit"
#Creation of Menu
select opt in $OPTIONS; do
	if [ "$opt" == "JOB" ]; then
	       printf 'Introduce the Job name:\n'
       	       read SAPJOB
	       buscarCadena $SAPJOB $INDICIUMPATH
	elif [ "$opt" == "PATH" ]; then
	       printf 'Introduce the remote path:\n'
	       read REMOTEPATH
	       printf 'This is the remote path that You have selected:\n'$REMOTEPATH'\n' 
	elif [ "$opt" == "Quit" ]; then
		printf 'Adios...\n'
		exit
	else
		printf 'Please select an option from menu\n'
	fi
done


