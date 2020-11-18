#!/usr/bin/env bash
#
IMAGE_NAME=rhounkpe/cloud-devops-nd-capstone
IMAGE_TAG=1.0.0
APP_PORT=5000
APP_LABEL=cloud-devops-nd-capstone
DOCKER_PATH=${IMAGE_NAME}:${IMAGE_TAG}
#
# Run in Docker Hub container with Kubernetes
kubectl run ${APP_LABEL} \
    --image=$DOCKER_PATH \
    --port=${APP_PORT} \
    --labels app=${APP_LABEL}

# List Kubernetes pods
kubectl get pods

# Forward the container port to host
kubectl port-forward ${APP_LABEL} ${APP_PORT}:${APP_PORT}



