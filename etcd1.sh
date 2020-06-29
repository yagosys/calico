ENDPOINTS=https://10.240.0.10:2379,https://10.240.0.11:2379,https://10.240.0.12:2379
CACERT=/etc/etcd/ca.pem
CERT=/etc/etcd/kubernetes.pem
KEY=/etc/etcd/kubernetes-key.pem

sudo ETCDCTL_API=3 etcdctl member list \
	--endpoints=$ENDPOINTS \
	--cacert=$CACERT \
	--cert=$CERT \
	--key=$KEY \
