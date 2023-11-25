# Step 1: Specify the base image
FROM node:16

# Step 2: Set the working directory
WORKDIR /

# Step 3: Copy package.json and package-lock.json
COPY package*.json ./

# Step 4: Install application dependencies
RUN npm install

# Step 5: Copy the application code
COPY . ./

# Step 6: Expose port 8000
EXPOSE 8000

# Step 7: Define the command to run the application
CMD [ "node", "index.js" ]