# A makefile to build the docker images for caffe.

DOCKER ?= docker

all: jupyter

.PHONY: gosu jupyter

gosu: gosu/Dockerfile
	$(DOCKER) build -t caffe:gosu gosu/

jupyter: jupyter/Dockerfile
	$(DOCKER) build -t caffe:gosu gosu/
	$(DOCKER) build -t caffe:jupyter jupyter/
