#!/bin/sh
stateFile="$HOME/.config/polybar/audioOutputStatus.txt"

export XCURSOR_SIZE=32

#xrandr --output DisplayPort-0 --off --output DisplayPort-1 --primary --mode 3840x2160 --pos 2316x1151 --rotate normal --rate 144 --output HDMI-A-0 --off --output HDMI-A-1 --off

xrandr --output DisplayPort-0 --off --output DisplayPort-1 --primary --mode 3840x2160 --pos 2560x0 --rotate normal --rate 144 --output HDMI-A-0 --off --output HDMI-A-1 --mode 2560x1440 --rate 175 --pos 0x156 --rotate normal

xinput set-prop 14 "libinput Accel Profile Enabled" 0 1 0

feh --no-fehbg --bg-fill '/home/jaxson/.config/tropic_island_morning.jpg' '/home/jaxson/.config/secondMonitor.png'

pactl set-sink-port alsa_output.pci-0000_00_1f.3.analog-stereo analog-output-lineout
echo Speakers > "$stateFile"
wpctl set-volume @DEFAULT_AUDIO_SINK@ "75%"

xsetroot -cursor_name left_ptr

export QT_QPA_PLATFORMTHEME=qt5ct

xrdb -merge ~/.Xresources

#start compositor
picom &

polybar -r &

fcitx5 &

#start wm
exec bspwm 
