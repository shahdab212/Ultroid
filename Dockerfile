# Start with a Python 3 base image
FROM python:3.9-slim-buster

# Set a working directory
WORKDIR /app

# Install git
RUN apt-get update && apt-get install -y git

# Copy the current directory contents into the container at /app
COPY . /app

# Install the Python dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Install additional requirements
RUN pip3 install --no-cache-dir -r re*/st*/op*.txt

# Copy your .env file from your local machine to your Docker image.
# Note: Make sure your .env file is in the same directory as your Dockerfile
COPY .env /app/.env

# Expose the necessary port
EXPOSE 80

# Set the command to run your bot
CMD ["python3", "-m", "pyUltroid"]
