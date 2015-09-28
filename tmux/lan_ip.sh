export LAN_IP=$(ifconfig en0 | grep 'inet ' | awk '{print $2}')
if [ -n "$LAN_IP" ]; then
  echo "📡  $LAN_IP" 
fi
