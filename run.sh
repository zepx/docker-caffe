#!/bin/bash
#-v /etc/group:/etc/group:ro -v /etc/passwd:/etc/passwd:ro \

nvidia-docker run -ti --rm \
    -e LOCAL_USER_I=`id -u $USER` \
    -v /home/choong/Projects:/home/choong/work \
    -p 8888:8888 \
    caffe:jupyter bash
