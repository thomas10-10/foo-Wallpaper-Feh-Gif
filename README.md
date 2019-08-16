# About foo-Wallpaper-Feh-Gif
This is just a loop script that sets a gif as a wallpaper. Supports transparency. Requires feh (apt install feh)

! INCREASES CPU use

<img src="https://github.com/thomas10-10/foo-Wallpaper-Feh-Gif/raw/master/desktop-animation2.gif"  />
<img src="https://github.com/thomas10-10/foo-Wallpaper-Feh-Gif/raw/master/desktop-animation4.gif"  />

# To run it
Download loopFeh.sh or clone the project  and place your desired gif in the `gif` directory aside the script .
For ubuntu/xfce use file loopUbuntuXfce.sh , You can set stretched style in desktop panel.

```
cd ~
chmod +x loopXfce.sh
./loopXfce.sh 0.010 gif/pixel.gif &
#./loopXfce.sh speed pathToGif &
```

autostart with i3, in i3 config :

```
exec_always --no-startup-id killall loopXfce.sh 
exec_always --no-startup-id $HOME/loopXfce.sh 0.03 Downloads/beautycity.gif
```

# To stop it
```
killall loopXfce.sh
```

# Alternatively

You can add the speed as a suffix to your desired gif.

```
ls gif/pixel.gif-0.010
./loopXfce.sh gif/pixel.gif-0.010 &
```


# To clean cache
 ```
rm -rf /tmp/loopXfce.sh
```

I search feh alternative light in cpu ress



