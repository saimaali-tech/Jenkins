
# Use the official Node.js image as the base image
FROM node:20

# Set the working directory in the container
WORKDIR /usr/src/app


# Copy the rest of the application code
COPY . .

# Copy package.json and package-lock.json (if applicable)
COPY package*.json ./

# Install the application dependencies
RUN npm install


# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]