#!/usr/bin/env bash
if [ "$1" == "same" ]; then
  docker exec -it unity_ros bash
else
  docker run --name unity_ros --rm -it --net=host --privileged \
             -v /dev:/dev \
             -v /etc/localtime:/etc/localtime:ro \
             -v /var/run/docker.sock:/var/run/docker.sock \
             -v /home/$USER/unity_ros_niching:/root/unity_ros_niching \
             -v /home/$USER/.bashrc:/root/.bashrc \
             unity_ros_niching:laptop
fi
