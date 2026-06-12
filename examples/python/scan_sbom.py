import json
import os
import urllib.request

api_base_url = os.environ["API_BASE_URL"]
service_api_key = os.environ["SERVICE_API_KEY"]
sbom_file = os.environ.get("SBOM_FILE", "./sbom.json")

with open(sbom_file, "rb") as file:
    body = file.read()

request = urllib.request.Request(
    f"{api_base_url}/scan-sbom",
    data=body,
    method="POST",
    headers={
        "Authorization": f"Bearer {service_api_key}",
        "Content-Type": "application/json",
        "X-Product-Name": "Demo Product",
        "X-Product-Version": "1.0.0",
        "Idempotency-Key": "python-scan-demo",
    },
)

with urllib.request.urlopen(request) as response:
    print(json.dumps(json.loads(response.read()), indent=2))

