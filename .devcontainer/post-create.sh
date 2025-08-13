#!/bin/bash

echo "Setting up OpenPlayground development environment..."

# Install frontend dependencies
echo "Installing frontend dependencies..."
cd /workspace/app
npm install

# Install backend dependencies using Poetry
echo "Installing backend dependencies..."
cd /workspace
poetry install

echo "Setup complete! You can now run the application."
echo ""
echo "To start the application:"
echo "  Frontend: cd app && npx parcel watch src/index.html --no-cache"
echo "  Backend: python -m server.app"
echo ""
echo "Or use the integrated command: openplayground run"
