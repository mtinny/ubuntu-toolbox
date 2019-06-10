#!/bin/bash

set -eux

tag=${tag:-v0.0.5}
image=mtinny/ubuntu-toolbox:${tag}
latest_image=mtinny/ubuntu-toolbox:latest

docker build -t ${image} .
docker push ${image}

docker tag ${image} ${latest_image}
docker push ${latest_image}
