#!/bin/bash
# pflint
# 
sudo apt-get install x3270
sudo dpkg -P docker
sudo apt-get install docker.io
sudo docker run -it flintiii/vm370:latest /bin/bash
