FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install system packages
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-opencv && \
    ln -s /usr/bin/python3 /usr/bin/python && \
    rm -rf /var/lib/apt/lists/*


# Install required Python packages
RUN pip3 install --no-cache-dir \
    numpy \
    pandas \
    matplotlib \
    seaborn

# Set working directory and mount point
WORKDIR /usr/src
VOLUME ["/usr/src"]

# Default command
CMD ["python"]
