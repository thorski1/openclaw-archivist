#!/bin/bash
COLLECTION="$1"
DATA="$2"

# Use a relative path from the skill directory or a predictable workspace subfolder
# Default to current directory if OPENCLAW_WORKSPACE is not set
BASE_DIR="${OPENCLAW_WORKSPACE:-.}"
STORAGE_DIR="$BASE_DIR/context"

mkdir -p "$STORAGE_DIR"
FILE="$STORAGE_DIR/${COLLECTION}.jsonl"

TIMESTAMP=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
echo "{\"ts\": \"$TIMESTAMP\", \"payload\": $DATA}" >> "$FILE"
