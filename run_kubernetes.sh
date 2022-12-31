#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="kienndt/devops4:sklearn1"

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl create deployment --image=$dockerpath devops4
kubectl run devops4 --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
# kubectl expose deployment devops4 --port=8000 --target-port=80 --name=devops4-service --type=NodePort
#kubectl port-forward deployment/devops4 8000:80
kubectl port-forward pods/devops4 8000:80
