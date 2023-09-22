#!/bin/bash

cd /home/ubuntu/mern/MERN-Sample-Social-Media-App

# Build and serve the application using Docker Compose
docker-compose -f docker-compose.ec2.yml up -d

# Wait for containers to fully start 
sleep 10

echo "Deployment on EC2 complete!"
