#!/usr/bin/env bash
set -euo pipefail

: "${API_BASE_URL:?Set API_BASE_URL}"
: "${SERVICE_API_KEY:?Set SERVICE_API_KEY}"

curl -sS -X POST "$API_BASE_URL/workflows/incidents" \
  -H "Authorization: Bearer $SERVICE_API_KEY" \
  -H "Content-Type: application/json" \
  -H "Idempotency-Key: incident-workflow-20260612-001" \
  -d @sample-data/sample-incident-workflow.json

