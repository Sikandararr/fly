# Use Ubuntu as the base image
FROM ubuntu:latest

# Install Python and dependencies
RUN apt-get update && apt-get install -y python3 python3-pip

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install any dependencies specified in requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

# Run the Python script (sikuser.py)
CMD ["python3", "sikuser.py"]
