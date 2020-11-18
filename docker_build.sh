#!/usr/bin/env bash
# Build image
IMAGE_NAME=rhounkpe/cloud-devops-nd-capstone
IMAGE_TAG=1.0.0

# Build image
docker build -t  ${IMAGE_NAME}:${IMAGE_TAG} .
