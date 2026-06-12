# CRA Direct API Examples

Copy-paste examples for integrating CI/CD pipelines, SBOM generation, stateless scanning, and CRA workflow creation with CRA Direct.

> Independent project notice: this repository is maintained by CRA Direct. It is not affiliated with, endorsed by, or operated by the European Union, ENISA, any CSIRT, or any market surveillance authority.

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

Use this split deliberately:

| Need | Use |
| --- | --- |
| Try an SBOM scan without creating product records | Stateless scan |
| Check a short PURL list in CI | PURL scan |
| Evaluate CRA-oriented triage output | Stateless triage |
| Retain SBOM evidence for a product version | Persistent SBOM upload |
| Start a reportable vulnerability or incident workflow | Workflow creation |

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

## Safety Notes

- Store service keys in CI/CD secret storage.
- Do not commit production SBOMs, incident data, vulnerability evidence, tenant IDs, or service keys.
- Use stable idempotency keys for retries of the same logical event.
- Treat these examples as integration patterns, not legal advice or compliance certification.

## Commercial Support

Need help integrating CRA Direct into your CI/CD, SBOM, vulnerability-management, or compliance workflow?

Contact: contact@cra-direct.fr
