#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
DOCKER_USERNAME=larsm6
dockerpath=$DOCKER_USERNAME/udacity-prj4-maertins

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
tag=latest
echo "Using tagname: $tag"
docker login -u "$DOCKER_USERNAME"

# Step 3:
# Push image to a docker repository
#docker push $dockerpath:$tagname
docker push $dockerpath:$tag