export REGION1=put region name 

export REGION2=put region name 

export VM_ZONE=put zone name 
export PROJECT_ID=put your project name 
gcloud auth login --no-launch-browser
gcloud config set project $PROJECT_ID

curl -LO https://github.com/bgirigcloud/cloudhero-network-skill/blob/main/HTTPLoadBalancerCloudArmor.sh

sudo chmod +x quicklabgsp215.sh

./quicklabgsp215.sh

