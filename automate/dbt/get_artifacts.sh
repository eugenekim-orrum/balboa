#! /bin/bash

# Cause script to exit on error
set -e

cd ~/workspace/transform
dbt run-operation get_last_manifest | awk '/{/ { f = 1 } f' > logs/manifest.json
echo "Updated manifest from production"