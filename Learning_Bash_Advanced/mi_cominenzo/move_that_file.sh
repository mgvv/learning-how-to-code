#!/bin/bash
#let's se if there's a file in ~/Desktop
declare -a FILES
declare FECHA
declare DIA
declare FILE2
declare DESKTOP
declare HERE
declare -a LISTA_DE_ARCHIVOS
#Set Working Directory
HERE="$(pwd)"
#Set Desktop PATH
DESKTOP=/home/$USER/Desktop/
#We set the current day
DIA="$(date +*%Y_*%d*%H*)"
#Put entire list from ~/Desktop/
LISTA_DE_ARCHIVOS="$(ls /home/$USER/Desktop/)" #If "ls -l" shows any file this file will match with next format "NotesX_YYYY_M_D_HH_M_SS_Response_to_INCIDENT_.pdf"
FILES="$(find $DESKTOP -type f -name $DIA)"
#printf "%s\n" "${FILES[@]}"
#Show the list content
if [[ -n $LISTA_DE_ARCHIVOS ]];  then
    #echo "File does exists..."
    #echo
    #printf "%s\n" "${LISTA_DE_ARCHIVOS[@]}"
    mv $FILES $HERE
#   printf "%s\n" "${LISTA_DE_ARCHIVOS[@]}"
    #echo `expr "${LISTA_DE_ARCHIVOS[@]}"`
  else
    echo "There is no files in $DESKTOP ..."
fi

#EOF
