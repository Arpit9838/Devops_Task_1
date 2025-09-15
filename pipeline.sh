#!/bin/bash
set -e

echo " Starting local CI pipeline..."
PROJECT_DIR=$(pwd)
echo "Using project dir: $PROJECT_DIR"

IMAGE_NAME="node-express-hello-world:ci"

# Step 1: Build Docker image
echo " Building Docker image..."
docker build -t $IMAGE_NAME .

# Step 2: Install dependencies inside container
echo " Installing dependencies..."
docker run --rm -v "$PROJECT_DIR":/usr/src/app -w /usr/src/app $IMAGE_NAME npm install

# Step 3: Install ESLint inside container (if not already in package.json)
echo "Installing ESLint..."
docker run --rm -v "$PROJECT_DIR":/usr/src/app -w /usr/src/app $IMAGE_NAME npm install eslint @eslint/js globals --save-dev

# Step 4: Run linting
echo " Running linting..."
docker run --rm -v "$PROJECT_DIR":/usr/src/app -w /usr/src/app $IMAGE_NAME npx eslint .

# Step 5: Run tests
echo " Running tests..."
docker run --rm -v "$PROJECT_DIR":/usr/src/app -w /usr/src/app $IMAGE_NAME npm test

echo " CI pipeline completed successfully."
