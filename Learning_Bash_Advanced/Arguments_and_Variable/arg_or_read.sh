#!/bin/bash - 
#===============================================================================
#
#          FILE: arg_or_read.sh
# 
#         USAGE: ./arg_or_read.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Manuel Gabriel Veliz Vega (mgw), mgveliz@gmail.com
#  ORGANIZATION: DEVOPS
#       CREATED: 15/01/17 00:26:15
#      REVISION:  ---
#===============================================================================
set -o nounset                              # Treat unset variables as an error
#===============================================================================
#  MAIN SCRIPT
#===============================================================================
if [ -z $1 ]; then
	echo "please provide an argument"
	read ARG
else
	ARG=$1
fi
echo "Your argument was $ARG"

