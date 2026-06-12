import { readFile } from "node:fs/promises";

const apiBaseUrl = process.env.API_BASE_URL;
const serviceApiKey = process.env.SERVICE_API_KEY;
const productId = process.env.PRODUCT_ID;
const productVersion = process.env.PRODUCT_VERSION ?? "1.0.0";
const sbomFile = process.env.SBOM_FILE ?? "./sbom.json";

if (!apiBaseUrl || !serviceApiKey || !productId) {
  throw new Error("Set API_BASE_URL, SERVICE_API_KEY, and PRODUCT_ID");
}

const form = new FormData();
form.set("version", productVersion);
form.set("files", new Blob([await readFile(sbomFile)], { type: "application/json" }), "sbom.json");

const response = await fetch(`${apiBaseUrl}/ingest-sbom?queue_analysis=true`, {
  method: "POST",
  headers: {
    Authorization: `Bearer ${serviceApiKey}`,
    "X-Product-Id": productId,
  },
  body: form,
});

console.log(JSON.stringify(await response.json(), null, 2));

