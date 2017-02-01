#!/bin/bash - 
#===============================================================================
#
#          FILE: taking_note.sh
# 
#         USAGE: ./taking_note.sh 
# 
#   DESCRIPTION:Aplicacion para tomar nota y referencia para el curso de BASH scripting de PluralSight 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Manuel Gabriel Veliz Vega (MGW), mgveliz@gmail.com
#  ORGANIZATION: AoO
#       CREATED: 01/02/17 10:56:01
#      REVISION:  ---
#===============================================================================
#######
#set -o nounset                              # Treat unset variables as an error
#######
#get date
date=$(date)
#get the topic
## Usamos la "" para cuando queremos evitar el error en espacios en blanco
##es una validacion para que el usuario pueda incluir valores en blanco
### se podria user el tr que use en blank2underscore.sh para formatear la
### la variable y cambiar los whitespace en underscore
topic="$1"
#filename to write to
filename="/home/mgw/Documents/Extra/learning-how-to-code/Learning_Bash_Advanced/Pluralsight/${topic}notes.txt"
#Ask user for input
read -p "Your note: " note
# If statement
if [[ $note ]]; then
	echo "$date: $note" >> "$filename"
	echo "Note '$note' saved to $filename"
else
	echo "No imput; note wasn't saved."
fi
#EOF


