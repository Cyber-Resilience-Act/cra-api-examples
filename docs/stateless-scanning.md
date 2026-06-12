# Stateless Scanning

Stateless endpoints do not persist uploaded SBOMs, scan state, progress, or results.

Endpoints:

- `POST /scan-sbom`
- `POST /scan-purls`
- `POST /triage-stateless`

Use stateless scanning for demos, preflight checks, or temporary analysis. Use persistent SBOM upload when you need evidence retention, product-version records, workflow linkage, and audit trails.

## When Stateless Scanning Fits

- public demo applications
- CI preflight checks before persistent upload
- evaluating scanner output before a pilot
- checking a small PURL list from another tool
- testing API connectivity and authentication

## When Stateless Scanning Is Not Enough

Use the hosted CRA Direct workflow when you need:

- retained SBOM evidence
- product and version records
- linked analysis history
- VEX and affectedness review
- Article 14 workflow state
- notifications and deadline tracking
- audit evidence and exports

## Basic Flow

```text
SBOM or PURL input
  -> stateless API call
  -> vulnerability findings
  -> optional stateless triage
  -> decide whether to start persistent evidence/workflow process
```
