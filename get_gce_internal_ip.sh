INTERNAL_IP=$(curl -s -H "Metadata-Flavor: Google" \
	  http://metadata.google.internal/computeMetadata/v1/instance/network-interfaces/0/ip)
echo $INTERNAL_IP
