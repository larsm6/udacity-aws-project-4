#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 0: 
# Delete previous builds
docker stop ucity-prj4
docker rm ucity-prj4

# Step 1:
# Build image and add a descriptive tag
docker build -t larsm6/udacity-prj4-maertins .

# Step 2: 
# List docker images
docker images larsm6/udacity-prj4-maertins

# Step 3: 
# Run flask app
docker run --publish 8000:80 \
    --name ucity-prj4 \
    --log-driver json-file --log-opt mode=non-blocking \
    larsm6/udacity-prj4-maertins
#    -m ucity-prj4-volume,target=/app \