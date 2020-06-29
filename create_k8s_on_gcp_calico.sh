gcloud container clusters create calico --num-nodes 1 --machine-type n1-standard-1  \
	--cluster-version latest \
	--image-type UBUNTU \
	--metadata disable-legacy-endpoints=true \
	--addons HorizontalPodAutoscaling,HttpLoadBalancing \
	--password=TigeraCalicoFortinetFortigate \
        --enable-intra-node-visibility \
	--enable-basic-auth 
	
