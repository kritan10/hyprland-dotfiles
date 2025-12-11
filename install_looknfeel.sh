#!/bin/sh

INPUT_FILE="$HOME/.config/hypr/looknfeel.conf"

# Add border rounding
sed -i "s/^\([[:space:]]*\)#\?[[:space:]]*rounding.*/\1rounding = 8/" "$INPUT_FILE"

echo "Looknfeel updated successfully"
