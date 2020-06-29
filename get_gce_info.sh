gcloud compute addresses list --filter="name=kubernetes-the-hardway"
gcloud compute instances describe worker-0 --format json | jq .networkInterfaces[0].accessConfigs[0].natIP
KUBERNETES_PUBLIC_ADDRESS=$(gcloud compute addresses describe kubernetes-the-hardway \
  --region $(gcloud config get-value compute/region) \
  --format 'value(address)')
gcloud compute addresses describe kubernetes-the-hardway --region asia-east2 --format json | jq .address
