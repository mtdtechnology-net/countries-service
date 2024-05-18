# Use the official Node.js image.
FROM node:14

# Create and change to the app directory.
WORKDIR /usr/src/app

# Copy application dependency manifests to the container image.
COPY package*.json ./

# Copy the build script to the container.
COPY runtime/build.sh ./

# Run the build script.
RUN chmod +x ./build.sh

# Copy the rest of the application code.
COPY . .

# Expose the port the app runs on.
EXPOSE 3000

# Run the web service on container startup.
CMD [ "npm", "start" ]