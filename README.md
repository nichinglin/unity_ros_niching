# unity_ros_niching

## Setup

Your will need to install git, docker, and some depandency

### Install Git
```
sudo apt-get install git
```
### Install Docker
```
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce
```
*** Run Docker without sudo ***
```
sudo -i
sudo usermod -aG docker $USER
```

### Download
```
docker pull
git clone https://github.com/nichinglin/unity_ros_niching.git

## How To Run
```
cd ~/unity_ros_niching/
source docker_run.sh
source unity.sh [master_ip] [unity_ip]
roslaunch rosbridge_server rosbridge_websocket.launch
```
