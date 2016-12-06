#!/bin/bash
#
#demonstrate making menus with select

echo `chose a directory: `
select dir in /etc /bin /usr
do
	#only continue if user has selected something
	if [ -n "$dir" ]
	then 
		DIR=$dir 
		echo you have selected $DIR
		export DIR
		break
	else
		echo invalid choice
	fi
done	
