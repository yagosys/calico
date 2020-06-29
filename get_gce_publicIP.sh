gcloud compute addresses list --filter=region:$(gcloud config get-value compute/region) --format json | jq .[0].address
