#!/bin/bash - 
#===============================================================================
#
#          FILE: create_script.sh
# 
#         USAGE: ./create_script.sh 
# 
#   DESCRIPTION: Contional expression example this is the second scripts used in the course "Shell Scripting with Bash" for PluralSight.
#		This script, sets permission and more
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Manuel Gabriel Veliz Vega (MGW), mgveliz@gmail.com
#  ORGANIZATION: AoO
#       CREATED: 02/02/17 10:15:20
#      REVISION:  ---
#===============================================================================
#
#set -o nounset                              # Treat unset variables as an error
#
#Is there an argument ?
if [[ ! $1 ]]; then
	echo "Missing argumnet"
	exit 1
fi
#
scriptname="$1"
bindir="/home/mgw/Documents/Extra/learning-how-to-code/Learning_Bash_Advanced/Pluralsight/testing_create_script"
filename="/home/mgw/Documents/Extra/learning-how-to-code/Learning_Bash_Advanced/Pluralsight/testing_create_script/${scriptname}"
#Check if the $filename exist.
if [[ -e $filename ]] ; then
	echo "File ${filename} already exist"
	exit 1
fi
#check if the script's name is a command
if type "$scriptname" > /dev/null 2>&1 ; then
	echo "There is already a command with name ${scriptname}"
	exit 1
fi
#check if the bin directory exist.
if  [[ ! -d $bindir ]] ; then #if not: create bin directory 
	if mkdir "$bindir"; then
		echo "Created ${$bindir}."
	else
		echo "Could no create ${bindir}."
		exit 1
	fi
fi
#Create a script with a single line
echo '#!/bin/bash' > "$filename"
#Add executable permission
chmod u+x "$filename"
#Open with editor
if [[ $EDITOR ]] ; then
	$EDITOR "$filename"
else
	echo "Script created; not starting editor because \$EDITOR is not set."
fi
#EOF
