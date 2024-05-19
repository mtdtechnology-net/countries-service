#!/bin/sh

# Exit immediately if a command exits with a non-zero status.
set -e

echo "Cleaning up..."
rm -rf node_modules

echo "Re-installing production dependencies..."
npm install --only=production

echo "Build completed."
