#!/bin/bash

echo "========================================"
echo " Dockerized Nginx Website Deployment"
echo "========================================"

echo ""
echo "Building Docker image..."
docker build -f docker/Dockerfile -t enterprise-nginx-webserver:v1 .

echo ""
echo "Stopping existing container (if running)..."
docker stop enterprise-nginx 2>/dev/null || true

echo "Removing existing container..."
docker rm enterprise-nginx 2>/dev/null || true

echo ""
echo "Starting new container..."
docker run -d \
  --name enterprise-nginx \
  -p 8080:80 \
  enterprise-nginx-webserver:v1

echo ""
echo "Deployment completed successfully!"
echo "Application URL: http://localhost:8080"