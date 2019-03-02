#!/usr/bin/env bash
export DEFAULT_IP=192.168.0.100

echo "Setting ROS_HOSTNAME and ROS_MASTER_URI..."
if [ $# -gt 0 ]; then
  # provided a hostname, use it as ROS_MASTER_URI
  export ROS_HOSTNAME=$1
  export ROS_MASTER_URI=http\:\/\/$1:11311\/
else
  echo "No hostname provided. Using Default."
  export ROS_HOSTNAME=$DEFAULT_IP
  export ROS_MASTER_URI=http\:\/\/$DEFAULT_IP:11311\/
fi
echo "ROS_HOSTNAME and ROS_MASTER_URI set to $ROS_HOSTNAME" 
