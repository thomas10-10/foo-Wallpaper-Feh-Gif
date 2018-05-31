#!/bin/bash
dir=/tmp/back4

if ! [[ $1 == "" ]] || ! [[ -d $dir ]] ; then 
	rm -rf $dir
	mkdir  $dir
	echo "spliting .."
	convert -coalesce $1 /tmp/back4/a.png
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
			sleep 0.010
			#echo 'sleep 0.015' >> instj.sh
			#clear
		done


done    
