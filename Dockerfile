FROM quay.io/podman/stable:latest

# Install dependencies
RUN dnf install -y curl git unzip && dnf clean all

# Create directories
RUN mkdir -p /config /runner /cache /usr/local/bin

# Download act_runner binary
RUN curl -L -o /usr/local/bin/act_runner \
    https://github.com/nektos/act_runner/releases/latest/download/act_runner-linux-amd64 && \
    chmod +x /usr/local/bin/act_runner
