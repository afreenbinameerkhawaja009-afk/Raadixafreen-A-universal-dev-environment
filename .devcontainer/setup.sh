#!/bin/bash
set -e

echo "Running setup.sh..."

# Install Gemini CLI
if ! command -v gemini &> /dev/null; then
    echo "Installing Gemini CLI..."
    sudo npm install -g @google/gemini-cli
fi

# Configure Gemini CLI YOLO mode
echo "Configuring Gemini CLI YOLO mode..."
# Note: YOLO mode is typically enabled via environment variable or config.
# For the purpose of this setup, we'll set the environment variable in devcontainer.json
# but we can also ensure the config directory exists.
mkdir -p ~/.gemini

echo "Setup complete."
