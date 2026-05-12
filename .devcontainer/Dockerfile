FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install additional tools not covered by features
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    curl ca-certificates gnupg \
    && curl -fsSL https://artifacts.elastic.co/GPG-KEY-elasticsearch | gpg --dearmor -o /usr/share/keyrings/elasticsearch-keyring.gpg \
    && echo "deb [signed-by=/usr/share/keyrings/elasticsearch-keyring.gpg] https://artifacts.elastic.co/packages/8.x/apt stable main" | tee /etc/apt/sources.list.d/elastic-8.x.list \
    && curl -fsSL https://packages.grafana.com/gpg.key | gpg --dearmor -o /usr/share/keyrings/grafana.gpg \
    && echo "deb [signed-by=/usr/share/keyrings/grafana.gpg] https://packages.grafana.com/oss/deb stable main" | tee /etc/apt/sources.list.d/grafana.list \
    && apt-get update \
    && apt-get -y install --no-install-recommends \
    postgresql-client \
    mysql-client \
    redis-tools \
    mongodb-clients \
    elasticsearch \
    prometheus \
    grafana \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Note: Elasticsearch, Prometheus, and Grafana usually require more complex setup 
# if run as services inside the container. Here we install the packages.
# Users might need to start them manually or via service commands.

# Ensure vscode user has sudo access (already handled by base image usually)
# but we can add any specific permissions here if needed.

# Set environment variables for Gemini CLI
ENV GEMINI_YOLO=true

# Set the default shell to bash
ENV SHELL=/bin/bash
