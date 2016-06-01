#!/bin/bash
export WAN_IP=$(curl icanhazip.com)
if [ -n "$WAN_IP" ]; then
  echo "$WAN_IP"
fi
