#!/bin/bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install build-essential \
    cmake \
    gfortran \
    git \
    wget \
    curl \
    graphicsmagick \
    libgraphicsmagick1-dev \
    libatlas-base-dev \
    libavcodec-dev \
    libavformat-dev \
    libboost-all-dev \
    libgtk2.0-dev \
    libjpeg-dev \
    liblapack-dev \
    libswscale-dev \
    pkg-config \
    python3-dev \
    python3-numpy \
    python3-pip \
    zip
sudo apt-get clean
sudo pip install Pillow
sudo pip install PIL
sudo pip install picamera
sudo pip3 install --upgrade picamera[array]
sudo pip install dlib
mkdir -p dlib
sudo git clone https://github.com/davisking/dlib.git dlib/
cd ./dlib
sudo python3 setup.py install --compiler-flags "-mfpu=neon"
sudo pip install face_recognition
sudo pip install opencv-python


sudo pip3 install face_recognition

sudo pip3 install --no-cache-dir --upgrade face_recognition