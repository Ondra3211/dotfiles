#!/bin/bash
swayidle -w \
timeout 120 'swaylock -c 000000' \
timeout 300 'hyprctl dispatch dpms off' \
timeout 600 'systemctl suspend' \
resume 'hyprctl dispatch dpms on' \
