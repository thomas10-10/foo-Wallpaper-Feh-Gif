#!/bin/bash
dir=/tmp/back4
#1=0.010

if ! [[ $2 == "" ]] || ! [[ -d $dir ]] ; then 
	rm -rf $dir
	mkdir  $dir
	echo "spliting .. please wait the word ok"
	convert -coalesce $2 /tmp/back4/a.png
	echo ok
fi

while :                 #début de la boucle sans fin
  do
	
	for i in ` ls $dir -v `
		do
 			
			#feh --bg-scale $dir/$i
			#echo "feh --bg-fill $dir/$i" >> instj.sh
			feh --bg-fill $dir/$i 
                        #nitrogen --set-zoom $dir/$i
			sleep $1
			#echo 'sleep 0.015' >> instj.sh
			#clear
		done


done    
