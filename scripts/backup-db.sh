#!/bin/bash

set -e

ENV=${1:-staging}
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_DIR="./backups/$ENV"
FILE="$BACKUP_DIR/db_backup_$DATE.sql.gz"

echo "📦 Starting DB backup ($ENV)..."

mkdir -p $BACKUP_DIR

docker compose \
  --env-file .env.$ENV \
  -f docker-compose.yml \
  exec -T database \
  pg_dump -U $DATABASE_USER $DATABASE_NAME \
  | gzip > $FILE

echo "✅ Backup saved:"
echo $FILE

# limpiar backups mayores a 7 días
find $BACKUP_DIR -type f -mtime +7 -delete

echo "🧹 Old backups cleaned"
