#!/bin/bash
read file
if [ ! -f $file ]; then
    	echo "File not found!"
else
	filename=$(basename -- "$file")
	filename="${filename%.*}"
	sudo chmod +x $file
	mv $file $filename.sh
fi
