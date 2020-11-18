#!/usr/bin/env bash
# Push image in Docker Hub
IMAGE_NAME=rhounkpe/cloud-devops-nd-capstone
IMAGE_TAG=1.0.0
docker push ${IMAGE_NAME}:${IMAGE_TAG}