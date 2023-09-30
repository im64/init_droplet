#!/bin/bash

apt update
adduser im
usermod -aG sudo im

apt install gh
apt install python3-pip

cp -r /root/.ssh /home/im/
chown -R im:im /home/im/.ssh
chmod 600 /home/im/.ssh/*
passwd im
