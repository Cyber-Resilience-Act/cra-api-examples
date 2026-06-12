#!/usr/bin/env bash
set -euo pipefail

: "${API_BASE_URL:?Set API_BASE_URL}"
: "${SERVICE_API_KEY:?Set SERVICE_API_KEY}"
: "${PRODUCT_ID:?Set PRODUCT_ID}"
: "${PRODUCT_VERSION:?Set PRODUCT_VERSION}"
: "${SBOM_FILE:?Set SBOM_FILE}"

curl -sS -X POST "$API_BASE_URL/ingest-sbom?queue_analysis=true" \
  -H "Authorization: Bearer $SERVICE_API_KEY" \
  -H "X-Product-Id: $PRODUCT_ID" \
  -F "version=$PRODUCT_VERSION" \
  -F "files=@$SBOM_FILE;type=application/json"

