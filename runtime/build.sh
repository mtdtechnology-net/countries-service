#!/bin/sh

# Exit immediately if a command exits with a non-zero status.
set -e

echo "Installing dependencies..."
npm install

echo "Running lint..."
npm run lint

echo "Running tests..."
npm test

echo "Cleaning up..."
rm -rf node_modules

echo "Re-installing production dependencies..."
npm install --only=production

echo "Build completed."
