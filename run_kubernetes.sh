#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=alicewanjohi/devapi:v1.0.0
# Step 2
# Run the Docker Hub container with kubernetes
minikube kubectl -- run devapi2 --image=alicewanjohi/devapi:v1.0.0 --port=80

# Step 3:
# List kubernetes pods
minikube kubectl get pods
# Step 4:
# Forward the container port to a host
minikube kubectl -- port-forward pod/devapi2 --address 0.0.0.0 8000:80

