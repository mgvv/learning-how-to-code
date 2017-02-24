#!/bin/bash - 
#===============================================================================
#
#          FILE: compare_directories.sh
# 
#         USAGE: ./compare_directories.sh 
# 
#   DESCRIPTION: Compare file count of two directories
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Manuel Gabriel Veliz Vega (MGW), mgveliz@gmail.com
#  ORGANIZATION: AoO
#       CREATED: 02/02/17 14:10:09
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

# compare file count of two directories

if [[ $# -ne 2 ]] ; then
	echo "Need exactly two arguments"
	exit 1
fi
#Both arguments should be directories
if [[ ! -d $1 ]] ; then
	echo "'$1' is not a directory"
	exit 1
fi
if [[ ! -d $2 ]] ; then
	echo "'$2' is not a directory"
	exit 1
fi
#Variables
declare dir1="$1"
declare dir2="$2"
#Get the number of files in directories
count_1=$(ls -A1 "$dir1" | wc -l)
count_2=$(ls -A1 "$dir2" | wc -l)
#Which one has more files?
if [[ $count_1 -gt $count_2 ]] ; then
	echo "${dir1} has more files than ${dir2}"
elif [[ $count_1 -eq $conunt_2 ]]; then
	echo "number of files is equal"
else
	echo "${dir2} has more files than ${dir1}"
fi

exit 0
