#!/bin/sh

SEP=
SEPE=

CLOCK=⌚
CALENDAR=🗓
GLOBAL_IP=🌍
LOCAL_IP=📡
MEMORY=🔩

WIDTH=${1}

SMALL=80
MEDIUM=140

if [ "$WIDTH" -gt "$MEDIUM" ]; then
  IP="#[fg=colour252,bg=default,nobold,noitalics,nounderscore]$SEP#[fg=colour16,bg=colour252,bold,noitalics,nounderscore] $GLOBAL_IP #(~/.tmux/wan_ip.sh) $SEPE $LOCAL_IP #(~/.tmux/lan_ip.sh)"
  date_colour='colour252'

  MEMORY="#[fg=colour236,bg=${date_colour:-default},nobold,noitalics,nounderscore]$SEP#[fg=colour247,bg=colour236,nobold,noitalics,nounderscore] $MEMORY #(~/.tmux/used_memory.sh)/#(~/.tmux/total_memory.sh)MB"
  MEMORY=""
fi

if [ "$WIDTH" -ge "$SMALL" ]; then
  BATTERY="#[fg=colour245,bg=${date_colour:colour236},nobold,noitalics,nounderscore]$SEP#[fg=colour16,bg=colour245,bold,noitalics,nounderscore] #(~/.tmux/battery_icon.sh) #(~/.tmux/battery_percentage.sh)"
  date_colour='colour245'

  DATE="#[fg=colour236,bg=${date_colour:-default},nobold,noitalics,nounderscore]$SEP#[fg=colour247,bg=colour236,nobold,noitalics,nounderscore] $CALENDAR $(date +'%D')"
  TIME="#[fg=colour241,bg=colour236,nobold,noitalics,nounderscore]$SEPE#[fg=colour252,bg=colour236,bold,noitalics,nounderscore] $CLOCK $(date +'%H:%M')"
fi


echo "$IP $MEMORY $BATTERY $DATE $TIME " | sed 's/ *$/ /g'
