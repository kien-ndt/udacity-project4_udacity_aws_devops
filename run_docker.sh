#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker image build -t devops4:sklearn1 .

# Step 2: 
# List docker images
docker image list

# Step 3: 
# Run flask app
docker run -p 8000:80 devops4:sklearn1
