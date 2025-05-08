# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . .

# Install any needed packages specified in package.json
RUN npm install

# Make the container's port 3000 available to the outside
EXPOSE 3000

# Define the command to run your app
CMD ["node", "app.js"]
