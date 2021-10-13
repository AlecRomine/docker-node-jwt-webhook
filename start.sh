#!/bin/bash

touch .env
cat local.env >> .env

# Stop the existing docker containers we made with Compose.
docker-compose build

# Rebuild the containers and detatch from this terminal.
docker-compose up -d



# Restarting after 20 second to give time for PG to finish building
# Docker-compose lets webhook try to connect before PG is ready
# It's a pg/docker-compose specific problem i believe
# sleep and restart is my quick work around
sleep 5s 
docker-compose restart webhook
