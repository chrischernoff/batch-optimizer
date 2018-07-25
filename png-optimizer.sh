INPUT=$@
MULTIPLE_ITEMS="false"

#  check if there are multiple files passed in by checking for a space character
if [[ "$INPUT" =~ \ |\' ]]
then
   MULTIPLE_ITEMS="true"
else
   MULTIPLE_ITEMS="false"
fi

echo "there are multiple items: $MULTIPLE_ITEMS";

# If a single item (either file or dir is passed in)
if [ "$MULTIPLE_ITEMS" = false ]
then
	#  If a directory is passed in then iterate through all of the items in it
	if   [ -d "${INPUT}" ]
	then 
		for f in "$INPUT"
		do
			/usr/local/bin/imageoptim "$f" -a
		done
	# If a single file is passed in
	elif [ -f "${INPUT}" ]
	then
		/usr/local/bin/imageoptim "$INPUT" -a	# If it's not a file or dir
	else echo "${INPUT} is not valid";
     	exit 1
	fi
# If there are multiple files then iterate through each one as a single file
else
	echo "here are each of the multiple files";
	stringarray=($INPUT)
	for i in "${stringarray[@]}"
	do
		/usr/local/bin/imageoptim "$i" -a
	done
fi
