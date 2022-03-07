# /bin/bash

# USAGE:
# bash Handson1_6_120140234.sh [Files...]

# Deklarasi array ARGS untuk menyimpan argument
ARGS="$@"

# Cek jika argument kosong
if [ ${#ARGS[@]} == 0 ]
then
	echo No Argument\(s\) passed.
else
	# Loop tiap file(s)
	for i in ${ARGS[@]}
	do
		# Cek jika file exist
		if [ -f "$i" ]
		then
			sed -i 's/.*/\U&/g' "$i"
		else
			echo File "$i" doesn\'t Exist.
		fi
	done
fi
