#!/bin/bash

echo "🚀 Starting PRODUCTION environment..."

docker compose \
  --env-file .env.prod \
  -f docker-compose.yml \
  -f docker-compose.prod.yml \
  up -d --build

echo "✅ Production running"
docker ps
