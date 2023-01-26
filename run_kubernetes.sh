#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=divyavan/ml-microservice-project:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment ml-project --image=$dockerpath
kubectl expose deployment ml-project --type=NodePort --port=80


# Step 3:
# List kubernetes pods
kubectl get pods
#kubectl get deployments
#kubectl get services

# Step 4:
# Forward the container port to a host
kubectl port-forward service/ml-project 8000:80
