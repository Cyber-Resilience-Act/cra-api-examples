#!/usr/bin/env bash
set -euo pipefail

: "${API_BASE_URL:?Set API_BASE_URL}"
: "${SERVICE_API_KEY:?Set SERVICE_API_KEY}"
: "${TRIAGE_INPUT:?Set TRIAGE_INPUT}"

curl -sS -X POST "$API_BASE_URL/triage-stateless" \
  -H "Authorization: Bearer $SERVICE_API_KEY" \
  -H "Content-Type: application/json" \
  -H "Idempotency-Key: demo-triage-$(date +%s)" \
  --data-binary "@$TRIAGE_INPUT"

