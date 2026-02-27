#!/bin/bash

echo "🔍 Checking services..."

curl -f http://localhost || echo "❌ Vote service DOWN"
curl -f http://localhost:3000 || echo "❌ Result service DOWN"

docker ps --format "table {{.Names}}\t{{.Status}}"
