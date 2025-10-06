#!/bin/bash
set -e

echo "Pulling latest Docker image from Docker Hub..."
docker pull shailbrox/cicd:latest

echo "Stopping existing container (if running)..."
docker stop myapp || true
docker rm myapp || true

echo "Starting new container..."
docker run -d -p 3000:3000 --name myapp shailbrox/cicd:latest
chmod +x scripts/deploy.sh
