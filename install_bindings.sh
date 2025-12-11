#!/bin/sh

cp -f ./conf/bindings.conf "$HOME/.config/hypr"

mkdir -p "$HOME/hypr/scripts"
cp -f ./scripts/ws-pair-switch.sh "$HOME/.config/hypr/scripts"

echo "Bindings installed successfully"