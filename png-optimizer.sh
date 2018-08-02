#get input files
inputs=$@

files=()
path=""
counter="0"

# separate input string by space and combine them sequentially with a space in the name one at a time to see if it is a file or dir type
for word in $inputs
do
	# add another word to the path to check
	path="$path$sep$word"
	
	# check if path resolves as a file or dir
	if [[ -f "$path" ]] || [[ -d "$path" ]]
	then
		((counter=counter+1))
		# add path to array of files/dirs to be optimized
		files=( "${files[@]}" "$path")
		path=""
		
		# clear out used input words
		for ((i=0; i < counter; i++));
			do
			unset '$inputs[i]'
			done
		sep=""
	else
		((counter=counter+1))
		sep=" "
	fi
done

# optimize the final array of files/dirs
for i in "${files[@]}"
	do
		/usr/local/bin/imageoptim "$i" -a
	done
	