#!/bin/bash

image=components-demo
tag=1.0.0
registry=itools-harbor.weichai.com/common
repo=${registry}/${image}:${tag}

docker build -f docker/Dockerfile -t ${repo} .
docker push ${repo}
docker rmi  ${repo}
