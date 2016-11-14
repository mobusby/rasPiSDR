#!/bin/sh

pblog='/home/pi/piBakeryLog.txt'
date &> $pblog
echo &>> $pblog

mkdir -p /home/pi/projects

echo "********** dump1090 download and build" >> $pblog
echo "git clone https://github.com/MalcolmRobb/dump1090.git /home/pi/projects/dump1090" &>> $pblog
git clone https://github.com/MalcolmRobb/dump1090.git /home/pi/projects/dump1090 &>> $pblog
cd /home/pi/projects/dump1090
make &>> $pblog

echo "********** VirtualRadar download and start" >> $pblog
mkdir -p /home/pi/projects/VirtualRadar/preview
cd /home/pi/projects/VirtualRadar/preview
wget http://www.virtualradarserver.co.uk/Files/Preview/VirtualRadar.tar.gz  &>> $pblog
tar -xzf VirtualRadar.tar.gz  &>> $pblog
wget http://www.virtualradarserver.co.uk/Files/Preview/VirtualRadar.WebAdminPlugin.tar.gz  &>> $pblog
tar -xzf VirtualRadar.WebAdminPlugin.tar.gz  &>> $pblog
mono /home/pi/projects/VirtualRadar/preview/VirtualRadar.exe -no-gui -createAdmin:admin -password:istrator &>> $pblog
