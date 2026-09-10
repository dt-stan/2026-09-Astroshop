#!/bin/bash
set -e

echo "Verifying Docker is available..."
docker version
docker compose version

echo "Codespace ready. Docker and Docker Compose are up and running. Will start the Astroshop web store"

gh codespace ports visibility 8080:public -c $CODESPACE_NAME

echo 'Please run the following command to bring the Astroshop Web Stone online:'
echo
echo '  docker compose --env-file .env --env-file .env.override \'
echo '    -f compose.yaml -f compose.observability.yaml -f compose.extras.yaml \'
echo '    up --force-recreate --remove-orphans --detach'