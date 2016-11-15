#!/bin/sh

mkdir -p /home/pi/projects

echo "********** dump1090 download and build"
git clone https://github.com/MalcolmRobb/dump1090.git /home/pi/projects/dump1090
cd /home/pi/projects/dump1090/
make

echo "********** VirtualRadar download, extract, and start"
mkdir -p /home/pi/projects/VirtualRadar/preview
cd /home/pi/projects/VirtualRadar/preview
wget http://www.virtualradarserver.co.uk/Files/Preview/VirtualRadar.tar.gz
tar -xzf VirtualRadar.tar.gz
wget http://www.virtualradarserver.co.uk/Files/Preview/VirtualRadar.WebAdminPlugin.tar.gz
tar -xzf VirtualRadar.WebAdminPlugin.tar.gz
mono /home/pi/projects/VirtualRadar/preview/VirtualRadar.exe -no-gui -createAdmin:admin -password:istrator
