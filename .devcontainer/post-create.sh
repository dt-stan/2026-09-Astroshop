#!/bin/bash
set -e

echo "Verifying Docker is available..."
docker version
docker compose version

echo "Codespace ready. Docker and Docker Compose are up and running. Will start the Astroshop web store"

gh codespace ports visibility 8080:public -c $CODESPACE_NAME

echo 'Please run the following command to bring the Astroshop Web Stone online:'
echo
echo '  make start-minimal '
echo ''
echo 'Github Codespaces are often resource contrained.  To inspect those containers which may have an issue, please run:'
echo '  docker ps -a | grep unhealthy '