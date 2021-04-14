# About foo-Wallpaper-Feh-Gif
This is just a loop script that sets a gif as a wallpaper. Supports transparency. Requires feh or xload or [xwallpaper](https://github.com/stoeckmann/xwallpaper)(uses less cpu).

! INCREASES CPU use

<img src="https://github.com/thomas10-10/foo-Wallpaper-Feh-Gif/raw/master/desktop-animation2.gif"  />
<img src="https://github.com/thomas10-10/foo-Wallpaper-Feh-Gif/raw/master/desktop-animation4.gif"  />

# More gif here
https://imgur.com/a/F6w9Vr4
https://imgur.com/a/XxraHzY


# To run it
Download back4.sh and place your desired gif in the `gif` directory.
For ubuntu/xfce set prog=$select4 in back4.sh , You can set stretched style in desktop panel.

```
cd ~
chmod +x back4.sh
./back4.sh 0.010 gif/pixel.gif &
#./back4 speed pathToGif &
```
# auto speed calculation
set 'auto' speed option for automatically calculate speed (30 frames per second)

```
./back4.sh auto gif/pixel.gif &
```

# select between feh,xwallpaper,xload,ubuntu-xfce
edit back4.sh, set prog=$select2 for xwallpaper, or select4 for ubuntu-xfce

# autostart with i3, in i3 config :

```
exec_always --no-startup-id killall back4.sh 
exec_always --no-startup-id $HOME/back4.sh 0.03 Downloads/beautycity.gif
```

# To stop it
```
killall back4.sh
```

# Alternatively

You can add the speed as a suffix to your desired gif.

```
ls gif/pixel.gif-0.010
./back4.sh gif/pixel.gif-0.010 &
```


# To clean cache
 ```
rm -rf /tmp/back4
```

I search a lighter alternative than feh in cpu ress



