# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /index

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application source code
COPY . .

# Expose the port your application will run on (adjust as needed)
EXPOSE 3000

# Define the command to start your application
CMD ["node", "index.js"]
