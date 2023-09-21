#!/bin/bash

# Change to the project directory
cd /home/ubuntu/mern/MERN-Sample-Social-Media-App

# Pull the latest code from your Git repository
git pull

# Build and serve the application using Docker Compose
docker-compose -f docker-compose.ec2.yml up -d

# Wait for containers to fully start (you may need to customize this)
sleep 10

# Run any additional setup or migrations if needed
# Example: docker-compose exec backend npm run migrate

echo "Deployment on EC2 complete!"
