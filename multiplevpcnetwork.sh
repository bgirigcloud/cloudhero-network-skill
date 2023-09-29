export ZONE=put zone name 

#NOTE:- Make sure region 2 must be different from zone 

export REGION_2=put region name 
export PROJECT_ID=put your project name 
gcloud auth login --no-launch-browser
gcloud config set project $PROJECT_ID


curl -LO https://github.com/bgirigcloud/cloudhero-network-skill/blob/main/multiple-vpc-network.sh

sudo chmod +x multiple-vpc-network.sh

./multiple-vpc-network.sh
