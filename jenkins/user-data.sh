#!/bin/bash
apt-get update
apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) \
stable"
apt-get update
apt-get install -y docker-ce
usermod -aG docker ubuntu

apt-get update -y
apt install -y openjdk-11-jre-headless
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
apt-get update -y
apt-get install -y jenkins
systemctl start jenkins
systemctl enable jenkins
systemctl status jenkins

# devopsnd
# Plugins 
# Blue Ocean Plugin (BlueOcean Aggregator)
jenkinsci/blueocean-plugin
# Handle aws S3	
AWS Plugin
Let us install AWS plugin into Jenkins that will enable us to use AWS services, particularly S3 service. We need this plugin because we intend to store some data from Jenkins Pipeline into S3 buckets.
aws (Pipeline: AWS Steps)