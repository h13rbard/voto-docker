#!/bin/bash

ENV=${1:-staging}

echo "🔄 Rebuilding $ENV..."

docker compose \
  --env-file .env.$ENV \
  -f docker-compose.yml \
  -f docker-compose.$ENV.yml \
  build

docker compose \
  --env-file .env.$ENV \
  -f docker-compose.yml \
  -f docker-compose.$ENV.yml \
  up -d

echo "✅ Rebuild complete"
