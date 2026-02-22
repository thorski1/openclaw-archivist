#!/bin/bash
COLLECTION="$1"
DATA="$2"
FILE="/Users/samuelthoyre/.openclaw/workspace/context/${COLLECTION}.jsonl"
TIMESTAMP=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
echo "{\"ts\": \"$TIMESTAMP\", \"payload\": $DATA}" >> "$FILE"
