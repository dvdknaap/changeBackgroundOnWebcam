#!/usr/bin/env sh
sudo modprobe v4l2loopback devices=1 video_nr=20 card_label="v4l2loopback" exclusive_caps=1

node bodypix/app.js &

sleep 3

python3 fakecam/fake.py &

#sleep 3

#ffplay /dev/video20
