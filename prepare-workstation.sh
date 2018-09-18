#Install BOSH CLIv2

echo "*************************************************************************"
echo "Installing BOSH CLIv2"
echo "*************************************************************************"
curl -LO https://s3.amazonaws.com/bosh-cli-artifacts/bosh-cli-5.1.2-linux-amd64
chmod +x bosh-cli-*
sudo mv bosh-cli-* /usr/local/bin/bosh

echo "BOSH version" 
bosh -v
echo "*************************************************************************"


#Install UAAC

echo "*************************************************************************"
echo "Installing UAAC"
echo "*************************************************************************"
sudo apt-get install ruby
sudo apt-get install -y build-essential zlibc zlib1g-dev ruby ruby-dev openssl libxslt-dev libxml2-dev libssl-dev libreadline6 libreadline6-dev libyaml-dev libsqlite3-dev sqlite3
sudo gem install cf-uaac

echo "UAAC version"
uaac -v
echo "*************************************************************************"

#Install Credhub

echo "*************************************************************************"
echo "Installing Credhub CLI"
echo "*************************************************************************"
curl -LO https://github.com/cloudfoundry-incubator/credhub-cli/releases/download/1.7.7/credhub-linux-1.7.7.tgz
tar -xzvf credhub-linux-*
sudo mv credhub /usr/local/bin

echo "Credhub version"
credhub --version
rm credhub-linux-*
echo "*************************************************************************"

#Install FLY

echo "*************************************************************************"
echo "Installing FLY"
echo "*************************************************************************"
curl -LO https://github.com/concourse/concourse/releases/download/v4.2.1/fly_linux_amd64
chmod +x fly_linux_*
sudo mv fly_linux_* /usr/local/bin/fly

echo "FLY version"
fly -v
echo "*************************************************************************"


#Install Python

echo "*************************************************************************"
echo "Installing Python and Pip, required for AWS CLI"
echo "*************************************************************************"
sudo apt-get install python python-pip

echo "Python version"
python --version
echo "*************************************************************************"

#AWS CLI
echo "*************************************************************************"
echo "Installing AWS CLI"
echo "*************************************************************************"
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

echo "AWS version"
aws --version
rm -rf awscli-bundle*
echo "*************************************************************************"


#TERRAFORM CLI

echo "*************************************************************************"
echo "Installing Terraform CLI"
echo "*************************************************************************"
curl -LO https://releases.hashicorp.com/terraform/0.11.8/terraform_0.11.8_linux_amd64.zip
unzip terraform_*

chmod +x terraform
sudo mv terraform /usr/local/bin
echo "Terraform version"
terraform -v
rm terraform_*
echo "*************************************************************************"

#BOSH BOOTLOADER CLI

echo "*************************************************************************"
echo "Installing BBL CLI"
curl -LO https://github.com/cloudfoundry/bosh-bootloader/releases/download/v6.10.0/bbl-v6.10.0_linux_x86-64
chmod +x bbl-v6.10.0_linux_x86-64
sudo v bbl-v6.10.0_linux_x86-64 /usr/local/bin/bbl


echo "BBL Version"
bbl -v
echo "*************************************************************************"
