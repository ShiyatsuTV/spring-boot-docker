#!/usr/bin/env bash
set -euo pipefail

echo "Fetching all containers created from the 'training-app' image and by container name..."
# All containers started from any 'training-app:*' image
C_BY_IMAGE=$(sudo docker ps -aq --filter "ancestor=training-app" || true)
# All containers whose name contains 'training-app'
C_BY_NAME=$(sudo docker ps -aq --filter "name=training-app" || true)

# Merge C_BY_IMAGE and C_BY_NAME into CONTAINERS (unique, non-empty)
CONTAINERS=$(printf "%s\n%s\n" "$C_BY_IMAGE" "$C_BY_NAME" | sort -u | sed '/^$/d' || true)

# Remove containers
if [ -n "${CONTAINERS:-}" ]; then
  echo "Removing containers: $CONTAINERS"
  # -f => force stop and remove
  sudo docker rm -f $CONTAINERS
else
  echo "No matching containers found"
fi

echo "Fetching all 'training-app' images (all tags/versions)..."
IMAGES=$(sudo docker images training-app -q | sort -u || true)

# Remove images
if [ -n "${IMAGES:-}" ]; then
  echo "Removing images: $IMAGES"
  sudo docker image rm -f $IMAGES
else
  echo "No 'training-app' images found"
fi

echo "Clean finished."
