# Workflow Creation

CRA Direct supports API-created workflows for cases where the manufacturer already has enough evidence to open a regulated workflow.

Endpoints:

- `POST /workflows/vulnerabilities`
- `POST /workflows/incidents`
- `POST /workflows/intermediate-reports`

Severity alone is not enough to create an Article 14 vulnerability workflow. The caller should have active exploitation evidence, product affectedness evidence, and a reportability decision.

