#!/bin/bash

echo "🛑 Stopping all containers..."

docker compose \
  -f docker-compose.yml \
  -f docker-compose.staging.yml \
  -f docker-compose.prod.yml \
  down

echo "✅ Stopped"
