#!/bin/sh

# Give permission for execution of this script
chmod +x /usr/src/app/entrypoint.sh

# Install NPM dependencies
npm install

# Start the React application
npm start
