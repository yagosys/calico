for i in 0 1 2; do gcloud compute scp controller_0_1_2.sh controller-${i}:;done
for i in 0 1 2 ; do gcloud compute ssh controller-${i} --command ./controller_0_1_2.sh;done
