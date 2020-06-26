#!/usr/bin/bash

# Installing bootstrap dependencies.
sudo -H apt-get install -qy python-rosdep python-rosinstall-generator python-wstool python-rosinstall build-essential

# Initializing rosdep.
sudo -H rosdep init
rosdep update

# Create a catkin Workspace.
mkdir ~/ros_catkin_ws
cd ~/ros_catkin_ws

#  Fetch the core packages.
rosinstall_generator desktop --rosdistro melodic --deps --tar > melodic-desktop.rosinstall
wstool init -j$(getconf _NPROCESSORS_ONLN) src melodic-desktop.rosinstall

# Resolving Dependencies.
# --os ubuntu:bionic 
rosdep install --from-paths src --ignore-src --rosdistro melodic -y

# Building the catkin Workspace.
sudo -H apt install python3-pip pyqt5 pyqt5-dev python3-pyqt5.qtsvg
pip3 install pyqt5 pydot
pip install pyqt5 pydot
./src/catkin/bin/catkin_make_isolated --install -DCMAKE_BUILD_TYPE=Release

####
#### Install Gazebo
####
sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'

wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
sudo -H apt-get update
sudo -H apt-get install -qy gazebo9