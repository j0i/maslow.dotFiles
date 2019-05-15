//uses feh to display a uniquebackground for each workspace
// dependencies include feh,jq,compton,i3

#!/bin/bash
xprop -spy -root _NET_CURRENT_DESKTOP | while read -r event; do
  num=$(i3-msg -t get_workspaces | jq '.[] | select(.focused==true) | .num')
  feh --bg-fill /home/$USER/Pictures/wallpapers/solarScapes/wall${num}.png
done
