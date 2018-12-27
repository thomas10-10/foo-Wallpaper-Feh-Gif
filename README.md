# About foo-Wallpaper-Feh-Gif
This is just a loop script that sets a gif as a wallpaper. Supports transparency. Requires feh (apt install feh)

! INCREASES CPU use

<img src="https://github.com/thomas10-10/foo-Wallpaper-Feh-Gif/raw/master/desktop-animation2.gif"  />
<img src="https://github.com/thomas10-10/foo-Wallpaper-Feh-Gif/raw/master/desktop-animation4.gif"  />

# To run it
Download back4.sh and place your desired gif in the `gif` directory.
For ubuntu/xfce use this file back4.sh ubuntu-xfce
```
cd ~
chmod +x back4.sh
./back4.sh 0.010 gif/pixel.gif &
#./back4 speed pathToGif &
```
For ubuntu/xfce
You can set stretched style in desktop panel


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

I search feh alternative light in cpu ress



