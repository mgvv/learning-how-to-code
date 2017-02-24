#!/bin/bash -
#===============================================================================
#
#          FILE: drawline.sh
# 
#         USAGE: ./drawline.sh 
# 
#   DESCRIPTION: prints a line of character
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Manuel Gabriel Veliz Vega (MGW), mgveliz@gmail.com
#  ORGANIZATION: AoO
#       CREATED: 03/02/17 14:24:14
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error
#Check for the length of the argument
if [[ ! $1 ]] ; then
	echo "Need line length argument" >&2
	exit 1
fi
#check that first argument is a number
if [[ $1 =~ ^[0-9]+$ ]]; then
	length="$1"
else
	echo "Length has to be a number" >&2
	exit 1
fi
char="="
if [[ $2 ]] ; then
	char="$2"
fi
line=" "
for (( CNTR=0; CNTR<length; ++CNTR )); do
	line="${line}${char}"
done
printf "%s\n" $line
