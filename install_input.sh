#!/bin/sh

INPUT_FILE="$HOME/.config/hypr/input.conf"

# Enable caps-lock
sed -i "s/^\([[:space:]]*\)#\?[[:space:]]*kb_options.*/\1kb_options = caps:default/" "$INPUT_FILE"

# Enable natural scrolling
sed -i "s/^\([[:space:]]*\)#\?[[:space:]]*natural_scroll.*/\1natural_scroll = true/" "$INPUT_FILE"

# Enable numlock_by_default
sed -i "s/^\([[:space:]]*\)#\?[[:space:]]*numlock_by_default.*/\1numlock_by_default = true/" "$INPUT_FILE"

echo "Inputs updated sucessfully"