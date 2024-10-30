#!/bin/bash

# Variables
EC2_USER="ubuntu"  # Change this to your EC2 username (e.g., ubuntu for Ubuntu instances)
EC2_HOST="34.243.242.103"  # Replace with your EC2 public IP or DNS name
GIT_REPO_DIR="~/git-test/DevOps"  # Replace with the path to your git repository on the EC2 instance
NODE_APP_NAME="index.js"  # Replace with the name of your Node.js application if using PM2

# Step 1: Connect to the EC2 instance and execute commands
ssh -i /Users/matteo/Sync/Coding/Keys/ssh/AWS/CLED_Sicilia_Matteo.pem $EC2_USER@$EC2_HOST << EOF

# Step 2: Navigate to the Git repository directory
cd $GIT_REPO_DIR

# Step 3: Pull latest changes from the git repository
git pull origin main  # Change 'main' if your default branch is different (e.g., 'master')

# Step 4: Install dependencies (if needed)
npm install

# Step 5: Restart Node.js application (using pm2 as an example)
node $NODE_APP_NAME &

EOF

echo "Deployment completed successfully!"