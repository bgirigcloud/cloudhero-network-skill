export REGION1=europe-west4

export REGION2=europe-west1

export VM_ZONE=us-east4-b
export PROJECT_ID=qwiklabs-gcp-02-6c8a4796fd54
gcloud auth login --no-launch-browser
gcloud config set project $PROJECT_ID

curl -LO https://github.com/bgirigcloud/cloudhero-network-skill/blob/main/HTTPLoadBalancerCloudArmor.sh

sudo chmod +x quicklabgsp215.sh

./quicklabgsp215.sh

