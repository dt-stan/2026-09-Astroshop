#!/bin/bash
set -e

echo "Verifying Docker is available..."
docker version
docker compose version

echo "Codespace ready. Docker and Docker Compose are up and running."
