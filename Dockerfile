FROM docker:24.0.6-dind

# Install dependencies
RUN apk add --no-cache python3 py3-pip git bash curl

# Install act_runner from PyPI (if available) or from GitHub release
RUN pip3 install --no-cache-dir act_runner
