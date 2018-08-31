apt-get -y update
apt-get install \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common \
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

apt-get -y update && apg-get -y install docker-ce
docker run -d --restart="always" -p 80:80 yeasy/simple-web
