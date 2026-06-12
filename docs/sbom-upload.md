# SBOM Upload

Persistent SBOM upload stores the SBOM as product-version evidence and can queue analysis.

Endpoint:

```text
POST /ingest-sbom?queue_analysis=true
```

Required inputs:

- service key
- registered product ID
- registered product version
- SBOM file

The target product version must already exist in CRA Direct.

