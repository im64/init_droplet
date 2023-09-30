#!/bin/bash

apt update -y
adduser im
usermod -aG sudo im

apt install -y gh python3-pip

cp -r /root/.ssh /home/im/
chown -R im:im /home/im/.ssh
chmod 600 /home/im/.ssh/*
