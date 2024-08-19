# Step 1: Use an official Node.js runtime as a parent image
FROM node:18

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Step 4: Install the dependencies
RUN npm install 

# Step 5: Copy the rest of the application code to the working directory
COPY . .

# Step 6: Expose the port that your application will run on
EXPOSE 3000

# Step 7: Define the command to run your application
CMD ["npm", "start"]
