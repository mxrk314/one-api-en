# Dockerfile for justsong/one-api-en

# Set the base image
FROM justsong/one-api-en:latest

# Maintainer
LABEL maintainer="justsong"

# Copy the application files
COPY . /app

# Set the working directory
WORKDIR /app

# Create Database
RUN create database `one-api-en`

# Expose the port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
