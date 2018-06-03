#!/bin/bash
dir=/tmp/back4  
#example of speed  : 0.010
speed=$1
name=$2


[[ "$name" == "" ]] && { name=$speed ; speed=${name##*-} ; }

hash=`md5sum $name | cut -f1 -d" "`

[[ ! -d $dir ]] && mkdir $dir 

[[ ! -d $dir/$hash ]] && { mkdir $dir/$hash ; echo "spliting .." ; convert -coalesce $name $dir/$hash/$hash.png ; echo ok ; }

while : ; do for i in ` ls $dir/$hash -v ` ; do feh --bg-fill $dir/$hash/$i ; sleep $speed ; done ; done    
   
