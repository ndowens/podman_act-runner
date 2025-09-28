FROM docker:24.0.6-dind

# Install dependencies
RUN apk add --no-cache python3 py3-pip git bash curl

# Install act_runner from PyPI (if available) or from GitHub release
RUN curl -o /usr/bin/act_runner -L \
  https://gitea.com/gitea/act_runner/releases/download/v0.2.13/act_runner-0.2.13-linux-amd64 && \
  chmod +x /usr/bin/act_runner
