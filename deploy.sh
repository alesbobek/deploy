#!/bin/sh
apt-get update
apt-get -y install apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common \
     lsb-release \
	 htop bash-completion

curl -fs https://download.docker.com/linux/debian/gpg | sudo apt-key add -

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

apt-get update && apt-get -y install docker-ce
docker run -d --restart="always" -p 80:80 yeasy/simple-web
