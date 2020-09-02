#!/usr/bin/env sh

sudo apt install v4l2loopback-dkms
sudo apt install ffmpeg

sudo modprobe -r v4l2loopback

pip3 install opencv-python

cd fakecam
pip3 install --no-cache-dir -r requirements.txt
