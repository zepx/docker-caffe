#!/bin/bash
#-v /etc/group:/etc/group:ro -v /etc/passwd:/etc/passwd:ro \

nvidia-docker run -ti --rm \
    -e LOCAL_USER_I=`id -u $USER` \
    -v /home/choong/Projects:/home/choong/work \
    -v /mnt/data/:/mnt/data \
    -v caffe_data:/opt/caffe/models \
    --network host \
    caffe:jupyter bash
