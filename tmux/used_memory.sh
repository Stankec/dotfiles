#!/usr/bin/env bash

STATS=$(vm_stat)

PAGE_SIZE=$(echo $STATS | grep -o 'page size of [0-9]\+ bytes' | grep -o '[0-9]\+')

FREE_BLOCKS=$(vm_stat | grep free | awk '{ print $3 }' | sed 's/\.//')
INACTIVE_BLOCKS=$(vm_stat | grep inactive | awk '{ print $3 }' | sed 's/\.//')
ACTIVE_BLOCKS=$(vm_stat | grep active | awk '{ print $3 }' | sed 's/\.//')
SPECULATIVE_BLOCKS=$(vm_stat | grep speculative | awk '{ print $3 }' | sed 's/\.//')
WIRED_BLOCKS=$(vm_stat | grep wired | awk '{ print $4 }' | sed 's/\.//')

FREE=$((($FREE_BLOCKS+$SPECULATIVE_BLOCKS)*$PAGE_SIZE/1024/1024))
INACTIVE=$(($INACTIVE_BLOCKS*$PAGE_SIZE/1024/1024))
ACTIVE=$(($ACTIVE_BLOCKS*$PAGE_SIZE/1024/1024))
WIRED=$(($WIRED_BLOCKS*$PAGE_SIZE/1024/1024))

USED=$((($FREE+$WIRED)))

TOTAL=$(~/.tmux/total_memory.sh)

TOTAL_FREE=$(($TOTAL-$USED))

echo "$TOTAL_FREE"
