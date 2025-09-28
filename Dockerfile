FROM quay.io/podman/stable:latest

# Install dependencies for act_runner
RUN apt-get update && \
    apt-get install -y git curl python3 python3-pip unzip && \
    rm -rf /var/lib/apt/lists/*

# Install act_runner
RUN pip3 install act_runner

# Create directories for config & runner data
RUN mkdir -p /config /runner /cache
