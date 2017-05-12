#!/bin/bash
#-v /etc/group:/etc/group:ro -v /etc/passwd:/etc/passwd:ro \

nvidia-docker run -ti --rm \
    -e LOCAL_USER=`id -u $USER` \
    -v /home/$USER:/home/$USER/mnt \
    -v /mnt/data/:/mnt/data \
    -v caffe_models:/opt/caffe/models \
    -v caffe_examples:/opt/caffe/examples \
    -v caffe_data:/opt/caffe/data \
    --network host \
    caffe:jupyter bash
