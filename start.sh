#!/usr/bin/env bash
# Build image
IMAGE_NAME_NAME=rhounkpe/cloud-devops-nd-capstone:1.0.0
APP_NAME=cloud-devops-nd-capstone
APP_NETWORK=devops-net
docker build -t  ${APP_NAME} .

# Create network if not exists
docker network create ${APP_NETWORK} || "true"

# Run image newly created
docker run -d \
    --log-driver json-file \
    --log-opt mode=non-blocking \
    --publish 8080:80 \
    --network ${APP_NETWORK} \
    --name ${APP_NAME} \
    ${IMAGE_NAME_NAME}