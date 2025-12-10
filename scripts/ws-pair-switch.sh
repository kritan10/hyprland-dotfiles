#!/bin/sh

DIR="${1:-right}"

CUR=$(hyprctl activeworkspace -j | jq '.id')
BLOCK=$(( (CUR - 1) / 2 ))

if [[ "$DIR" == "right" ]]; then
    NEW_BLOCK=$((BLOCK + 1))
else
    NEW_BLOCK=$((BLOCK - 1))
fi

if (( NEW_BLOCK < 0 || NEW_BLOCK > 4 )); then
    exit 0
fi

START=$(( NEW_BLOCK * 2 + 1 ))
HDMI_WS=$START
EDP_WS=$(( START + 1 ))

# Determine active monitor type
if (( CUR % 2 == 1 )); then
    ACTIVE_WS=$HDMI_WS
    INACTIVE_WS=$EDP_WS
else
    ACTIVE_WS=$EDP_WS
    INACTIVE_WS=$HDMI_WS
fi

# 1. First update the other monitor
hyprctl dispatch workspace "$INACTIVE_WS"

# 2. Small delay to prevent Hyprland from overriding focus
sleep 0.015

# 3. Then update the active monitor — final focus guaranteed correct
hyprctl dispatch workspace "$ACTIVE_WS"