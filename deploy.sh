#!/bin/bash

# Stop any existing Flask application running
echo "Stopping existing Flask application (if any)..."
pkill -f "flask run" || echo "No existing Flask application running."

# Navigate to the project directory
echo "Navigating to project directory..."
cd /home/ubuntu

# Install/update dependencies
echo "Installing/updating dependencies..."
pip install -r requirements.txt

# Set environment variables if necessary
export FLASK_APP=app.py
export FLASK_ENV=production  # or development

# Start the Flask application
echo "Starting the Flask application..."
nohup flask run --host=0.0.0.0 --port=5000 > flask.log 2>&1 &

echo "Deployment complete. Flask application is running on port 5000."
