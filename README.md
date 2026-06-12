# CRA Direct API Examples

Copy-paste examples for integrating CI/CD pipelines, SBOM generation, stateless scanning, and CRA workflow creation with CRA Direct.

## What Is Included

- stateless SBOM scans
- PURL chunk scans
- stateless CRA triage
- persistent SBOM evidence upload
- manual vulnerability workflow creation
- severe incident workflow creation
- intermediate report requests
- GitHub Actions examples
- Node and Python examples

## Stateless vs Persistent

Stateless endpoints are useful for demos, preflight checks, and lightweight integrations. They do not persist uploaded SBOMs, scan state, triage progress, or evidence.

The hosted CRA Direct product adds persistent SBOM evidence, product/version records, HITL review, Article 14 workflows, notifications, and audit trails.

## Environment

```bash
export API_BASE_URL="https://api.example.com"
export SERVICE_API_KEY="replace-me"
export PRODUCT_ID="registered-product-id"
export PRODUCT_VERSION="1.0.0"
```

## Examples

Start with:

- `examples/curl/scan-sbom.sh`
- `examples/curl/scan-purls.sh`
- `examples/curl/triage-stateless.sh`
- `examples/curl/ingest-sbom.sh`

Then review:

- `docs/authentication.md`
- `docs/idempotency.md`
- `docs/stateless-scanning.md`
- `docs/workflow-creation.md`

## Commercial Support

Need help integrating CRA Direct into your CI/CD, SBOM, vulnerability-management, or compliance workflow?

Contact: replace-with-your-email-or-website

