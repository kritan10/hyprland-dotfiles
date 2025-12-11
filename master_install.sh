#!/bin/sh

# chmod +x ./install_apps.sh 
# ./install_apps.sh

chmod +x ./install_bindings.sh 
./install_bindings.sh

chmod +x ./install_hyprlock.sh 
./install_hyprlock.sh

chmod +x ./install_input.sh 
./install_input.sh

chmod +x ./install_looknfeel.sh 
./install_looknfeel.sh

chmod +x ./install_monitors.sh 
./install_monitors.sh

chmod +x ./install_zshrc.sh 
./install_zshrc.sh

chmod +x ./install_waybar.sh 
./install_waybar.sh

hyprctl reload