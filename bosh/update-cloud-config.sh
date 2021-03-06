bosh -e bosh update-cloud-config cloud-config.yml \
    -v internal_cidr=10.0.1.0/24 \
    -v internal_gw=10.0.1.1 \
    -v network=$GCP_CONTROLPLANE_NETWORK \
    -v subnetwork=$GCP_CONTROLPLANE_SUBNET \
    -v static_ips=[10.0.1.10-10.0.1.20] \
    -v reserved_ips=[10.0.1.1-10.0.1.9] \
    -v tags=[control-plane]
