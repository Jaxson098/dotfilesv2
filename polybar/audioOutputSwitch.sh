#!/bin/bash

stateFile="$HOME/.config/polybar/audioOutputStatus.txt"

#find port and sink with pactl list sinks and looksing for the active one and then under ports:
if pactl list sinks | grep -q 'Active Port: analog-output-headphones'; then
    pactl set-sink-port alsa_output.pci-0000_00_1f.3.analog-stereo analog-output-lineout
    echo Speakers > "$stateFile"
else
    pactl set-sink-port alsa_output.pci-0000_00_1f.3.analog-stereo analog-output-headphones
    echo Headphones > "$stateFile"
fi
