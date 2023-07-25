# Dockerfile for justsong/one-api-en
# Maintainer: justsong <justsong@example.com>

FROM node:12-alpine

# Set environment variables
ENV TZ Asia/Shanghai

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Expose port
EXPOSE 3000

# Run the app
CMD ["npm", "start"]

# Create a volume for data persistence
VOLUME /data

# Set restart policy
RESTART always

# Run the container with the given name
CMD ["docker", "run", "--name", "one-api", "-d", "--restart", "always", "-p", "3000:3000", "-e", "TZ=Asia/Shanghai", "-v", "/home/ubuntu/data/one-api:/data", "justsong/one-api-en"]