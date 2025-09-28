# Start from official Docker DinD image (includes dockerd)
FROM docker:24.0.6-dind

# Install dependencies for act_runner
RUN apk add --no-cache python3 py3-pip bash curl git

# Download act_runner binary and make it executable
RUN curl -L -o /usr/local/bin/act_runner \
    https://gitea.com/gitea/act_runner/releases/download/v0.2.13/act_runner-0.2.13-linux-amd64 && \
    chmod +x /usr/local/bin/act_runner

# Set PATH so act_runner is found
ENV PATH="/usr/local/bin:/usr/bin:/usr/sbin:$PATH"
