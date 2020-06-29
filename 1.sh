wget -q --show-progress --https-only --timestamping https://storage.googleapis.com/kubernetes-the-hard-way/cfssl/linux/cfssl https://storage.googleapis.com/kubernetes-the-hard-way/cfssl/linux/cfssljson
   curl -o kubectl https://storage.googleapis.com/kubernetes-release/release/v1.15.3/bin/linux/amd64/kubectl
   chmod +x kubectl
   sudo mv kubectl /usr/bin
  gcloud compute networks create kubernetes-the-hard-way --subnet-mode custom
  gcloud compute networks subnets create kubernetes --network kubernetes-the-hard-way --range 10.240.0.0/24
  gcloud compute firewall-rules create kubernetes-the-hard-way-allow-internal --allow tcp,udp,icmp --network kubernetes-the-hard-way --source-ranges 10.240.0.0/24,10.200.0.0/16
  gcloud compute firewall-rules create kubernetes-the-hard-way-allow-external --allow tcp:22,tcp:6443,icmp --network kubernetes-the-hard-way --source-ranges 0.0.0.0/0
  gcloud compute addresses create kubernetes-the-hardway --region $(gcloud config get-value compute/region)
