# Stateless Scanning

Stateless endpoints do not persist uploaded SBOMs, scan state, progress, or results.

Endpoints:

- `POST /scan-sbom`
- `POST /scan-purls`
- `POST /triage-stateless`

Use stateless scanning for demos, preflight checks, or temporary analysis. Use persistent SBOM upload when you need evidence retention, product-version records, workflow linkage, and audit trails.

