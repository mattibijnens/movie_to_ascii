#!/bin/bash
if [ "$3" == "render" ]; then ./render.sh $1; fi
cd $1rendered
myArray=()
echo "Pre-loading images..."
for f in frame$1*.txt
do
	txt=$(cat $f)
	myArray+=( "$txt" )
done
echo -n "Done loading images... Starting"
#sleep 1
#echo -n "2.."
#sleep 1
#echo "1.."
#sleep 1
clear
function printFrames(){
	for frame in "${myArray[@]}"
	do
		clear
#		sleep 0.005
		echo "$frame"
	done

}
printFrames
repeat=false
if [ "$2" == "repeat" ]; then repeat=true; fi

while $repeat
do
	printFrames
done

