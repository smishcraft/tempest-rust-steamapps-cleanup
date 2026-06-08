#!/bin/bash
set +e

echo "[Tempest] Pre-Steam cleanup: wiping /home/container/steamapps before Parker entrypoint runs..."

if [ -d /home/container/steamapps ]; then
    rm -rf /home/container/steamapps
fi

mkdir -p /home/container/steamapps

echo "[Tempest] Pre-Steam cleanup complete. Continuing to original entrypoint..."

exec /entrypoint-original.sh "$@"
