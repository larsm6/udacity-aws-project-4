#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 0: 
# Delete previous builds
docker stop ucity-prj4
docker rm ucity-prj4

# Step 1:
# Build image and add a descriptive tag
docker build -t udacity-prj4-maertins:1.1 .

# Step 2: 
# List docker images
docker images --all

# Step 3: 
# Run flask app
docker run --publish 8000:80 --name ucity-prj4 udacity-prj4-maertins:1.1