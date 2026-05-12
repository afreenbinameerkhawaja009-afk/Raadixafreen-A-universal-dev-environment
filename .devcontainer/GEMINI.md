# Universal Dev Environment

Welcome to the universal development environment. This environment is pre-configured with a wide array of tools and languages.

## Installed Languages
- Python, Node.js, Go, Rust, Java, Ruby, PHP, .NET

## Tools
- Docker, Kubernetes (kubectl, helm), Terraform
- Gemini CLI (with YOLO mode enabled)

## Databases & Services
The following services are available (installed or as sidecars):
- PostgreSQL, MySQL, MongoDB, Redis, Elasticsearch
- Prometheus, Grafana

## Gemini CLI Usage
Gemini CLI is installed and ready to use. 
- **YOLO Mode:** Enabled by default via environment variable `GEMINI_YOLO=true`. This allows Gemini to execute commands without manual confirmation for every step.

## Customization
- Add your own initialization logic to `.devcontainer/setup.sh`.
- Modify `.devcontainer/devcontainer.json` to add/remove features.
