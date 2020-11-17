#!/usr/bin/env bash
# Build image
IMAGE_NAME=rhounkpe/cloud-devops-nd-capstone
IMAGE_TAG=1.0.0
APP_NAME=cloud-devops-nd-capstone
APP_NETWORK=devops-net

# Build image
docker build -t  ${IMAGE_NAME}:${IMAGE_TAG} .

# Create network if not exists
docker network create ${APP_NETWORK} || true
docker container stop ${APP_NAME} || true
docker container rm ${APP_NAME} || true

# Run image newly created
docker run -d \
    --log-driver json-file \
    --log-opt mode=non-blocking \
    --publish 8080:80 \
    --network ${APP_NETWORK} \
    --name ${APP_NAME} \
    ${IMAGE_NAME}:${IMAGE_TAG}