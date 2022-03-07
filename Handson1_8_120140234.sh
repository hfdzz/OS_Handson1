# /bin/bash

# USAGE:
# bash Handson1_8_120140234.sh File Start_line End_line

if [ $# == 3 ]
then
	sed -n "$2,$3 p" $1
else
	echo Missing arguments.
fi
