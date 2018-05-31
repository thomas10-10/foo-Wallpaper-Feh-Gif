#!/bin/bash
rm -rf /tmp/back4
mkdir /tmp/back4
echo "spleeting .."
convert -coalesce $1 /tmp/back4/a.png
echo ok
dir=/tmp/back4

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
