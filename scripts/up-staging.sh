#!/bin/bash

echo "🚧 Starting STAGING environment..."

docker compose \
  --env-file .env.staging \
  -f docker-compose.yml \
  -f docker-compose.staging.yml \
  up -d --build

echo "✅ Staging running"
docker ps
