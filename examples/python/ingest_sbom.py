import os
import subprocess

api_base_url = os.environ["API_BASE_URL"]
service_api_key = os.environ["SERVICE_API_KEY"]
product_id = os.environ["PRODUCT_ID"]
product_version = os.environ.get("PRODUCT_VERSION", "1.0.0")
sbom_file = os.environ.get("SBOM_FILE", "./sbom.json")

subprocess.run(
    [
        "curl",
        "-sS",
        "-X",
        "POST",
        f"{api_base_url}/ingest-sbom?queue_analysis=true",
        "-H",
        f"Authorization: Bearer {service_api_key}",
        "-H",
        f"X-Product-Id: {product_id}",
        "-F",
        f"version={product_version}",
        "-F",
        f"files=@{sbom_file};type=application/json",
    ],
    check=True,
)

