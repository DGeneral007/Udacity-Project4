#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="deegeneral/deedevops"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run deedevops\
    --image=$dockerpath\
    --port=80 --labels app=deedevops

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deedevops 8000:80