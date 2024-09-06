# Use the official Node.js image from DockerHub
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files to the container's working directory
COPY . .

# Expose the application on port 3000
EXPOSE 3000

# Run the application
CMD ["node", "index.js"]
