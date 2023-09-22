cd /home/ubuntu/Real-IT-Solutions-assignmet

# Build and serve the application using Docker Compose
docker-compose -f docker-compose.ec2.yml up -d

# Wait for containers to fully start (you may need to customize this)
sleep 10

echo "Deployment on EC2 complete!"
