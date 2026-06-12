#!/usr/bin/env bash
set -euo pipefail

: "${API_BASE_URL:?Set API_BASE_URL}"
: "${SERVICE_API_KEY:?Set SERVICE_API_KEY}"
: "${SBOM_FILE:?Set SBOM_FILE}"

curl -sS -X POST "$API_BASE_URL/scan-sbom" \
  -H "Authorization: Bearer $SERVICE_API_KEY" \
  -H "Content-Type: application/json" \
  -H "X-Product-Name: Demo Product" \
  -H "X-Product-Version: 1.0.0" \
  -H "Idempotency-Key: demo-scan-$(date +%s)" \
  --data-binary "@$SBOM_FILE"

