# Authentication

CRA Direct API examples use service keys.

Service keys are organization-scoped and should be stored in CI/CD secret storage. Do not commit service keys to repositories.

Use:

```http
Authorization: Bearer <service-key>
```

For persistent SBOM upload and workflow creation, the key must have the required capability for the endpoint.

