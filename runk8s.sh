#!/usr/bin/env bash
#
DOCKER_PATH="rhounkpe/get-started:part2"
#
# Run in Docker Hub container with Kubernetes
kubectl run get-started \
    --generator=run-pod/v1 \
    --image=$DOCKER_PATH \
    --port=8080 \
    --labels app=get-started

# List Kubernetes pods
kubectl get pods

# Forward the container port to host
kubectl port-forward get-started 8081:8080