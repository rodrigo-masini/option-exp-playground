#!/bin/bash

echo "🚀 Setting up OpenPlayground development environment..."

# Ensure we're in the project directory
cd /workspaces/option-exp-playground || cd /workspaces/openplayground || cd /workspaces/*

echo "📦 Installing frontend dependencies..."
if [ -d "app" ]; then
    cd app
    npm install
    cd ..
else
    echo "⚠️  app directory not found, skipping frontend setup"
fi

echo "🐍 Installing Python dependencies with Poetry..."
if [ -f "pyproject.toml" ]; then
    poetry install
else
    echo "⚠️  pyproject.toml not found, trying pip..."
    if [ -f "server/requirements.txt" ]; then
        pip install -r server/requirements.txt
    fi
fi

echo "✅ Setup complete!"
echo ""
echo "To run the application:"
echo "  Option 1 - Two terminals:"
echo "    Frontend: cd app && npx parcel watch src/index.html --no-cache"
echo "    Backend: python -m server.app"
echo ""
echo "  Option 2 - Using Poetry (if installed):"
echo "    poetry run openplayground run"
echo ""
echo "The application will be available at:"
echo "  Main app: http://localhost:5432"
echo "  Frontend dev: http://localhost:1234"
