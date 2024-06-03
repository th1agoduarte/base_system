# Use an official Node runtime as a parent image
FROM node:latest

# Set the working directory
WORKDIR /usr/src/app

RUN npm install -g npm@latest

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
