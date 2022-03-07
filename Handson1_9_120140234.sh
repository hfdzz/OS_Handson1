# /bin/bash

# USAGE:
# bash Handson1_9_120140234.sh WORD [Files...]

# Deklarasi array ARGS untuk menyimpan argument
ARGS=( "$@" )
ARGS=${VAR[@]:1}

# Check argument requirement
if [ $# -lt 2 ]
then
	echo Missing arguments.
else
	for i in ${ARGS[@]}
	do
		echo File \""$i"\":
		sed "/$1/d" "$i"
		# flag d untuk delete
		echo
	done
fi
