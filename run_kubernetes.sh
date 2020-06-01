#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
DOCKER_USERNAME=larsm6
dockerimage=udacity-prj4-maertins
dockerpath=$DOCKER_USERNAME/$dockerimage

docker pull $dockerpath

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run $dockerimage \
    --image=$dockerpath \
    --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/$dockerimage 8000:80