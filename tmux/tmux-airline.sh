#!/bin/sh

SEP=
SEPE=|

CLOCK=🕙
CALENDAR=🗓
GLOBAL_IP=🌍
LOCAL_IP=📡
MEMORY=🔩

WIDTH=${1}

SMALL=80
MEDIUM=140

if [ "$WIDTH" -gt "$MEDIUM" ]; then
  # IP="#[fg=colour252,bg=default,nobold,noitalics,nounderscore]$SEP#[fg=colour16,bg=colour252,bold,noitalics,nounderscore] $GLOBAL_IP #(~/.tmux/wan_ip.sh) $SEPE $LOCAL_IP #(~/.tmux/lan_ip.sh)"
  date_colour='colour252'

  # MEMORY_USAGE="#[fg=colour236,bg=${date_colour:-default},nobold,noitalics,nounderscore]$SEP#[fg=colour247,bg=colour236,nobold,noitalics,nounderscore] $MEMORY #(~/.tmux/used_memory.sh)/#(~/.tmux/total_memory.sh)M"
  date_colour='colour236'
  USAGE="#(rainbarf --no-battery --bright --bolt --swap --loadavg --rgb)"
fi

if [ "$WIDTH" -ge "$SMALL" ]; then
  BATTERY="#[fg=colour241,bg=${date_colour:-default},nobold,noitalics,nounderscore]$SEPE#[fg=colour252,bg=colour236,bold,noitalics,nounderscore] #(~/.tmux/battery_icon.sh) #(~/.tmux/battery_percentage.sh)"
  # DATE="#[fg=colour241,bg=colour236,nobold,noitalics,nounderscore]$SEPE#[fg=colour247,bg=colour236,nobold,noitalics,nounderscore] $CALENDAR $(date +'%Y/%m/%d')"
  # TIME="#[fg=colour241,bg=colour236,nobold,noitalics,nounderscore]$SEPE#[fg=colour252,bg=colour236,bold,noitalics,nounderscore] $CLOCK $(date +'%H:%M') "
  DATETIME="#[fg=colour241,bg=colour236,nobold,noitalics,nounderscore]$SEPE#[fg=colour247,bg=colour236,nobold,noitalics,nounderscore] $CALENDAR $(date +'%Y/%m/%d') #[fg=colour252,bg=colour236,bold,noitalics,nounderscore]$(date +'%H:%M')"
fi


echo "$IP $USAGE $BATTERY $DATETIME " | sed 's/ *$/ /g'
