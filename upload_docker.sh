#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="kienndt/devops4:sklearn1"

# Step 2:  
# Authenticate & tag
docker image tag devops4:sklearn1 $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
docker push $dockerpath
