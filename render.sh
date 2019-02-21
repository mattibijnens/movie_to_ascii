#!/bin/bash
mkdir $1frames
ffmpeg -i $1 $1frames/frame$1%05d.jpg
cd $1frames
mkdir ../$1rendered
for f in frame$1*.jpg
do
	jp2a $f > ../$1rendered/$f.txt
done
