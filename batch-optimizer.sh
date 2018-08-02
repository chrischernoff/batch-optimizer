imageoptim() {
	if [[ $1 == *.png ]]
	then
		/usr/local/bin/imageoptim "$1" -a
	else
		/usr/local/bin/imageoptim "$1"
	fi
}

export -f imageoptim

while read line
do
	if [ -f "$line" ]
	then
		imageoptim "$line"
	else
		find "$line" -type f -exec bash -c 'imageoptim "$0"' {} -a \;
	fi
done