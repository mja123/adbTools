#! /bin/bash

folder=/setUp/cmdline-tools
target=/setUp/cmdline-tools/tools

for file in $folder/*
do
    if [[ $file == $target ]]; then
	continue
    fi
    if [ -d $file ]; then
	echo "here"
	mv $file/ $target 
	continue
    fi
    echo "File: "$file
    mv $file $target 
done
