#!/bin/bash

PATH1="/Users/ilanrotenberg/Downloads/"
PATH_TO_MOVE="/Users/ilanrotenberg/Documents/Work_Related/Resume/2017_18"
filename1='Resume'
filename2="Cover Letter"

cd $PATH1

shopt -s nullglob
for f in *.pdf

do
	if [[ "$f" == *"$filename1"* ]]; then
		is_gill=$(pdffonts "$f" | grep -c GillSans)
		echo "$is_gill"
		if [ $is_gill -lt 2 ]; then
			mv "$f" $PATH_TO_MOVE
		else
			rm "$f"
		fi
	elif [[ "$f" == *"$filename2"* ]]; then
		mv "$f" $PATH_TO_MOVE
	fi
done

for g in *
do
	if [[ "$g" == *"$filename1"* ]] || [[ "$g" == *"$filename2"* ]]; then
		mv "$g" $PATH_TO_MOVE
	else
		rm "$g"
	fi
done


echo 'Done checking'