# Use Node.js LTS version
FROM node

# Set working directory
WORKDIR /home/ubuntu/node

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy app source code
COPY . .

# Expose the app port (example: 3000)
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]

