#!/bin/bash 
#let's se if there's a file in ~/Desktop
declare fecha
declare dia
declare mes
declare year
declare file2
declare desktop
declare here
#File list certain criteria $dia
declare -a files
#File list at ~/Desktop/
declare -a lista_de_archivos
#Set Working Directory
here="$(pwd)"
#Set Desktop PATH
desktop=/home/$USER/Desktop/
#Workgin with date
#We set the current day
dia="$(date +%d)"
dia="$(expr substr $dia 2 1)"
mes="$(date +%m)"
mes="$(expr substr $mes 2 1)"
year="$(date +%Y)"
fecha="*${year}_${mes}_${dia}*"
#Put entire list from ~/Desktop/
lista_de_archivos="$(ls /home/$USER/Desktop/)" #If "ls -l" shows any file this file will match with next format "NotesX_YYYY_M_D_HH_M_SS_Response_to_INCIDENT_.pdf"
files="$(find $desktop -type f -name $fecha)"
#printf "%s\n" "${files[@]}"
#Show the list content
if [[ -n $lista_de_archivos ]] && [[ -n $files ]] ;  then
    mv $files $here
  else
    echo "There is no files in $desktop ..."
fi
#EOF
