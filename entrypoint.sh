#!/bin/bash
set -e

echo "[Tempest] Pre-Steam cleanup: removing /home/container/steamapps..."

rm -rf /home/container/steamapps || true
mkdir -p /home/container/steamapps || true

echo "[Tempest] steamapps reset complete. Starting ParkerVCP entrypoint..."

exec /entrypoint-parkervcp.sh "$@"
