#!/bin/bash
#
echo "\$* gives $*"
echo "\$# gives $#"
echo "\$@ gives $@"
echo "\$0 is $0"
#Trying to show every single argument on a separated line
echo showing the interpretation of \$*
for i in "$*"
do
	echo $i
done
echo showing the interpretation of \$@
for i in "$@"
do
	echo $i
done
echo showing the interpretation of \$#
for i in "$#"
do
	echo $i
done
exit 0

