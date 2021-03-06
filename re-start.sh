#!/bin/bash

rm .env
touch .env
cat local.env >> .env

# Stop the existing docker containers we made with Compose.
docker-compose stop

# Rebuild the containers and detatch from this terminal.
docker-compose up -d --build
