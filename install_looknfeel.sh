#!/bin/sh

# Add border rounding
sed -i "s/^\([[:space:]]*\)#\?[[:space:]]*rounding.*/\1rounding = 8/" "$INPUT_FILE"
