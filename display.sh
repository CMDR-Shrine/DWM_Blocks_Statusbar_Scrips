#!/bin/bash

# Check if DP-1 is connected
if xrandr | grep -q "DP-1 connected"; then
    # Disable LVDS-1
    xrandr --output LVDS-1 --off
    # Enable DP-1
    xrandr --output DP-1 --mode 1920x1080 --rate 120 
else
    # Enable LVDS-1
    xrandr --output LVDS-1 --mode 1366x768 --rate 60.00 
    # Disable DP-1
    xrandr --output DP-1 --off
fi

