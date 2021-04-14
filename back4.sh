#!/bin/env bash
select1='feh --bg-fill --no-fehbg'
select2='xwallpaper --zoom'
select3='xloadimage -onroot -fullscreen'
select4='xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s'
select5='hsetroot -full'

prog=$select1
[ "$#" -lt "1" ] || [ "$#" -gt "2" ] && {  echo -e "ERROR : args number invalid \n $0 speed /path/name.gif" ; echo "try 0.010 as speed" ; exit 1 ; }
dir=/tmp/back4  
#example of speed  : 0.010
speed=$1
name=$2

[[ "$name" == "" ]] && { name=$speed ; speed=${name##*-} ; }

hash=`md5sum $name | cut -f1 -d" "`

[[ ! -d $dir ]] && mkdir $dir 

[[ ! -d $dir/$hash ]] && { mkdir $dir/$hash ; echo "spliting .." ; convert -coalesce $name $dir/$hash/$hash.png ; echo ok ; }

if [ "$1" == "auto" ]; then
    frames=($(ls -v "$dir/$hash"))
    amount_of_frames=${#frames[@]}
    frames_per_second=30
    speed=$(bc <<< "scale=3; ($amount_of_frames/$frames_per_second) * (1/$frames_per_second)")
fi

while : ; do for i in ` ls $dir/$hash -v ` ; do $prog $dir/$hash/$i ; sleep $speed ; done ; done    
   
