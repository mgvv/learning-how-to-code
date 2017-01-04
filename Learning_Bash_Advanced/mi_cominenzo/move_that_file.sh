#!/bin/bash
#let's se if there's a file in ~/Desktop
declare FILE
declare FECHA
declare -a LISTA_DE_ARCHIVOS
LISTA_DE_ARCHIVOS=$(ls /home/$USER/Desktop/) #If "ls -l" shows any file this file will match with next format "NotesX_YYYY_M_D_HH_M_SS_Response_to_INCIDENT_.pdf"
if [[ -n $LISTA_DE_ARCHIVOS ]];  then
    echo "File does exists..."
    FECHA=$(date +"%Y_%m_%d_%H_%M")
    echo ${LISTA_DE_ARCHIVOS[*]}
    echo "NotesX"
fi
#EOF
