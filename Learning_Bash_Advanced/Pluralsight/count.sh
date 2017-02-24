#!/bin/bash - 
#===============================================================================
#
#          FILE: count.sh
# 
#         USAGE: ./count.sh 
# 
#   DESCRIPTION: This script prints a range of numbers
# Usage: count [-r] [-b n] [-s n] stop
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Manuel Gabriel Veliz Vega (MGW), mgveliz@gmail.com
#  ORGANIZATION: AoO
#       CREATED: 06/02/17 09:14:13
#      REVISION:  ---
#===============================================================================
declare reverse=""
declare -i begin=0
declare -i step=1

while getopts "b:s:r" opt ; do
	case $opt in
		r)
			reverse="yes"
			;;
		b)
			[[ ${OPTARG} =~ ^[0-9] ]] || { echo "${OPTARG} is not a number" >&2; exit 1; }
			start="${OPTARG}"
			;;
		s)
			[[ ${OPTARG} =~ ^[0-9] ]] || { echo "${OPTARG} is not a number" >&2; exit 1; }
			step="${OPTARG}"
			;;
		\?)
			exit 1
			;;
	esac    # --- end of case ---
done	# --- end of while ---

shift $(( OPTIND -1 ))

[[ $1 ]] || { echo "missing an argument" >&2; exit 1; }
declare end="$1"
if [[ ! $reverse ]] ; then
	for (( CNTR=start; CNTR <= end; CNTR+=step )); do
		echo $CNTR
	done
else 
	for (( CNTR=end; CNTR >= start; CNTR-=step )); do
		echo $CNTR
	done
fi
exit 0
