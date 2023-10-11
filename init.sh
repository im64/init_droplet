#!/bin/bash

apt update -y
adduser im
usermod -aG sudo im

apt install -y gh python3-pip

cp -r /root/.ssh /home/im/
chmod 600 /home/im/.ssh/*
cp .gitconfig /home/im
cp .vimrc /home/im
echo 'alias py=python3' >> /home/im/.bashrc
chown -R im:im /home/im
