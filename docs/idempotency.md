# Idempotency

Workflow creation and stateless operations should use an `Idempotency-Key` header.

Use a stable key for the same external event, such as:

- CI run ID
- scanner run ID
- SOC ticket ID
- vulnerability-management record ID
- incident record ID

Retry the same event with the same key. Do not generate a new key for every retry of the same logical event.

