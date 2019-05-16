#!/bin/bash
clear

echo 'beginning setup'

sudo apt-get update && apt-get install -y wget

sudo chmod +x install_ros_melodic.sh && ./install_ros_melodic.sh

sudo apt-get install -y python-rospy && sudo apt-get install -y unzip

sudo chmod +x install_opencv2.sh && ./install_opencv2.sh

sudo pip install --upgrade pip && pip install pyyaml

pip install rospkg && pip install opencv-python

echo 'setup completed successfully'

sudo rosdep init && rosdep update