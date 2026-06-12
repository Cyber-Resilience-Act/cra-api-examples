#!/usr/bin/env bash
set -euo pipefail

: "${API_BASE_URL:?Set API_BASE_URL}"
: "${SERVICE_API_KEY:?Set SERVICE_API_KEY}"
: "${WORKFLOW_ID:?Set WORKFLOW_ID}"

curl -sS -X POST "$API_BASE_URL/workflows/intermediate-reports" \
  -H "Authorization: Bearer $SERVICE_API_KEY" \
  -H "Content-Type: application/json" \
  -H "Idempotency-Key: intermediate-request-20260612-001" \
  -d '{
    "workflowId": "'"$WORKFLOW_ID"'",
    "requestedBy": "CSIRT coordinator",
    "requestedAt": "2026-06-12T09:00:00.000Z",
    "dueAt": "2026-06-13T09:00:00.000Z",
    "requestReference": "CSIRT-REQ-42",
    "requestedScope": ["current status", "mitigation progress"],
    "authorityQuestions": ["What containment measures have been completed?"]
  }'

