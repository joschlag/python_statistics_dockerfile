FROM ubuntu:22.04

# Install system dependencies
RUN apt update && \
    apt upgrade -y && \
    apt install -y build-essential wget zlib1g zlib1g-dev python3 python3-pip && \
    apt clean

# Install Python packages
RUN pip install packaging seaborn numpy pandas matplotlib

# Set working directory
WORKDIR /home/app

# Copy your package code into the image
COPY . /home/app

# Install your package
RUN python3 setup.py install


