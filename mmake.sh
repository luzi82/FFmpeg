#!/bin/bash

set -e

./configure --cc=/usr/bin/clang \
 --prefix=/opt/ffmpeg \
 --disable-avisynth \
 --disable-fontconfig \
 --disable-gpl \
 --disable-libass \
 --disable-libbluray \
 --disable-libfreetype \
 --disable-libgsm \
 --disable-libmodplug \
 --disable-libmp3lame \
 --disable-libopencore-amrnb \
 --disable-libopencore-amrwb \
 --disable-libopus \
 --disable-libsnappy \
 --disable-libsoxr \
 --disable-libspeex \
 --disable-libtheora \
 --disable-libvidstab \
 --disable-libvo-amrwbenc \
 --disable-libvorbis \
 --disable-libvpx \
 --disable-libwavpack \
 --disable-libx264 \
 --disable-libx265 \
 --disable-libxavs \
 --disable-libxvid \
 --disable-libzmq \
 --disable-libzvbi \
 --disable-version3 \
 --disable-ffplay \
 --disable-ffprobe \
 --disable-ffserver \
 --disable-indev=qtkit
make
