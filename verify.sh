#!/bin/bash
set -e

echo "=== Verificando Simple Stock Flow Infraestructura ==="
echo "1. Verificando estado de contenedores..."
docker compose ps

echo "2. Verificando healthcheck de la API..."
curl -f http://localhost:8000/health || exit 1

echo "3. Verificando frontend..."
curl -f http://localhost:8080 || exit 1

echo "Infraestructura OK!"

