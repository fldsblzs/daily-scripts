# Custom display configuration for sddm

```sh
# get connected devices
> xrandr | grep ' connected'

# output
HDMI-0 connected primary 3840x2160+0+0 (normal left inverted right x axis y axis) 632mm x 360mm
eDP-1-0 connected (normal left inverted right x axis y axis)

# add configuration to Xsetup
> sudo nano /usr/share/sddm/scripts/Xsetup

#!/bin/sh
# Xsetup - run as root before the login dialog appears
xrandr --output DP-1 --off
xrandr --output DP-5 --mode 3840x2160 --pos 0x0 --rotate normal

# add config to sddm
> sudo nano /etc/sddm.conf

[XDisplay]
# Xsetup script path
# A script to execute when starting the display server
DisplayCommand=/usr/share/sddm/scripts/Xsetup

# optional
sudo reboot
```
