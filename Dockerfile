# Use the official Node.js 14 image as the base
FROM node:14

# Create and set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the rest of the application files to the working directory
COPY . .

# Set the port that the app will listen on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
