#!/usr/bin/env bash
HOSTPORT=8000
#CONTAINERPORT=80

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t ml-microservice-project:latest .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run --rm -p $HOSTPORT:80 ml-microservice-project:latest
