#!/bin/bash
#===============================================================================
#
#          FILE: AreYouSure.sh
# 
#         USAGE: ./AreYouSure.sh 
# 
#   DESCRIPTION: Ask to user if hes is sure about anything
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Manuel Gabriel Veliz Vega (MGW), mgveliz@gmail.com
#  ORGANIZATION: AoO
#       CREATED: 03/02/17 10:48:00
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error

echo -n "Are You  sure (Y/N)?"
answered=
while [[ ! $answered ]] ; do
	read -r -n 1 -s answer
	if [[ $answer = [Yy] ]] ; then
		answered="yes"
	elif	[[ $answer = [Nn] ]] ; then
		answered="no"
	fi
done
printf "\n%s\n" "$answered"
