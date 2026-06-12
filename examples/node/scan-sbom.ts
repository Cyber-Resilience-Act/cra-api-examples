import { readFile } from "node:fs/promises";

const apiBaseUrl = process.env.API_BASE_URL;
const serviceApiKey = process.env.SERVICE_API_KEY;
const sbomFile = process.env.SBOM_FILE ?? "./sbom.json";

if (!apiBaseUrl || !serviceApiKey) {
  throw new Error("Set API_BASE_URL and SERVICE_API_KEY");
}

const response = await fetch(`${apiBaseUrl}/scan-sbom`, {
  method: "POST",
  headers: {
    Authorization: `Bearer ${serviceApiKey}`,
    "Content-Type": "application/json",
    "X-Product-Name": "Demo Product",
    "X-Product-Version": "1.0.0",
    "Idempotency-Key": `node-scan-${Date.now()}`,
  },
  body: await readFile(sbomFile, "utf8"),
});

console.log(JSON.stringify(await response.json(), null, 2));

