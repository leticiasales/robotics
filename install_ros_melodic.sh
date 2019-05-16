#!/bin/bash

sudo apt install -y gnupg2

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list'

gpg2 --keyserver hkp://pgp.mit.edu:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

sudo apt-get update && sudo apt-get install -y --allow-unauthenticated ros-melodic-desktop

echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc && source ~/.bashrc