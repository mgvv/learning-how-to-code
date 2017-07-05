#!/bin/bash
#set -x
#let's se if there's a file in ~/Desktop
#Set Working Directory
here="$(pwd)"
#Set Desktop PATH
desktop="$HOME/Desktop/"
#Working with date command output
mes="$(date +%m | cut -c2)"
year="$(date +%Y)"
#Setting the find command criteria
fecha="*${year}_${mes}_*"
#Put entire list from ~/Desktop/
files="$(find $desktop -type f -name "$fecha")"
#Evaluate the list content
if [[ -n $files ]] ;  then
    mv $files $here
    exit 0
  else
    echo "There is no files in $desktop ..."
    exit 1
fi
#EOF
