# Use the Microsoft devcontainer Python image which already has vscode user
FROM mcr.microsoft.com/devcontainers/python:3.9

# Switch to root for installations
USER root

# Install Node.js 19 if not already included via features
RUN curl -fsSL https://deb.nodesource.com/setup_19.x | bash - \
    && apt-get install -y nodejs

# Install Poetry
ENV POETRY_VERSION=1.4.1
ENV POETRY_HOME=/opt/poetry
ENV PATH="$POETRY_HOME/bin:$PATH"

RUN curl -sSL https://install.python-poetry.org | python3 - --version $POETRY_VERSION

# Install additional tools
RUN apt-get update && apt-get install -y \
    git \
    curl \
    vim \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Create workspace directory with proper permissions
RUN mkdir -p /workspaces && chown -R vscode:vscode /workspaces

# Set working directory
WORKDIR /workspaces

# Switch back to vscode user
USER vscode

# Configure Poetry for vscode user
RUN poetry config virtualenvs.in-project true
