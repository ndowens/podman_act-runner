FROM quay.io/podman/stable:latest

# Install dependencies
RUN dnf install -y curl git unzip && dnf clean all

# Create directories
RUN mkdir -p /config /runner /cache /usr/local/bin

# Download act_runner binary
RUN curl -L -o /usr/bin/act_runner \
    https://gitea.com/gitea/act_runner/releases/download/v0.2.13/act_runner-0.2.13-linux-amd64 && \
    chmod +x /usr/bin/act_runner && \
    ls -l /usr/bin/act_runner
