#!/bin/sh

echo "[INFO] Starting Beszel Agent..."
echo "[INFO] Listen port: $LISTEN"

if [ -z "$KEY" ] || [ -z "$LISTEN" ]; then
  echo "[ERROR] KEY and LISTEN must be set."
  exit 1
fi

# Start Beszel Agent (image already expects these env vars)
exec beszel-agent