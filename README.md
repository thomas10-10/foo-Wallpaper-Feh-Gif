# foo-Wallpaper-Feh-Gif
just a loop who set wallpaper for display gif,  support transparency, require feh (apt install feh)

! Of course, INCREASE CPU uses

<img src="https://github.com/thomas10-10/foo-Wallpaper-Feh-Gif/raw/master/desktop-animation2.gif"  />
<img src="https://github.com/thomas10-10/foo-Wallpaper-Feh-Gif/raw/master/desktop-animation4.gif"  />

# Run it
Download back4.sh and you have some gif in dir gif
```
cd ~
chmod +x back4.sh
./back4.sh 0.010 gif/pixel.gif &
#./back4 speed pathToGif &
```

# stop it
```
killall back4.sh
```

# others

you can set speed as suffixe name

```
ls gif/pixel.gif-0.010
./back4.sh gif/pixel.gif-0.010 &
```


# you can clean cach
 ```
rm -rf /tmp/back4
```

please correct my english thx, i search feh alternative light in cpu ress



