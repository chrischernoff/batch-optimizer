INPUT=$@

stringarray=($INPUT)
for i in "${stringarray[@]}"
	do
		/usr/local/bin/imageoptim "$i" -a
	done
