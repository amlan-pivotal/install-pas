VENDOR_PATH=$HOME/workspace/vendors
CREDS_PATH=$HOME/workspace/keys


bosh create-env $VENDOR_PATH/bosh-deployment/bosh.yml \
  --state=$CREDS_PATH/state.json \
  --vars-store=$CREDS_PATH/creds.yml \
  -o $VENDOR_PATH/bosh-deployment/gcp/cpi.yml \
  -o $VENDOR_PATH/bosh-deployment/uaa.yml \
  -o $VENDOR_PATH/bosh-deployment/jumpbox-user.yml \
  -o $VENDOR_PATH/bosh-deployment/credhub.yml \
  -o $VENDOR_PATH/bosh-deployment/misc/ntp.yml \
  -o $VENDOR_PATH/bosh-deployment/misc/dns.yml \
  -v director_name=control-plane-bosh \
  -v internal_cidr=10.0.1.0/24 \
  -v internal_gw=10.0.1.1 \
  -v internal_ip=10.0.1.6 \
  --var-file gcp_credentials_json=$CREDS_PATH/ad-bosh-oss.key.json \
  -v project_id=$PROJECT_ID \
  -v zone=$GCP_ZONE \
  -v tags=[bosh] \
  -v network=$GCP_CONTROLPLANE_NETWORK \
  -v subnetwork=$GCP_CONTROLPLANE_SUBNET \
  -v internal_ntp=[metadata.google.internal] \
  -v internal_dns=[8.8.8.8,8.8.4.4]
