#!/bin/bash

image=components-demo
tag=1.0.0
registry=registry.xuelangyun.com/shuzhi-amd64
repo=${registry}/${image}:${tag}

docker build -f docker/Dockerfile -t ${repo} .
# docker push ${repo}
