# Authentication

CRA Direct API examples use service keys.

Service keys are organization-scoped and should be stored in CI/CD secret storage. Do not commit service keys to repositories.

Use:

```http
Authorization: Bearer <service-key>
```

For persistent SBOM upload and workflow creation, the key must have the required capability for the endpoint.

## Recommended Secret Handling

- Store keys in GitHub Actions secrets, GitLab CI variables, a vault, or another secret manager.
- Rotate keys on a schedule and immediately after suspected exposure.
- Use separate keys per integration so revocation does not break unrelated workflows.
- Avoid sharing one key across development, staging, and production.

## Request Headers

Most examples use:

```http
Authorization: Bearer <service-key>
Idempotency-Key: <stable-event-key>
```

Persistent product-version uploads also include product context, such as:

```http
X-Product-Id: <registered-product-id>
```
