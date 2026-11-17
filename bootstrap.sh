sudo apt update
sudo apt full-upgrade

# Add Docker's official GPG key:
sudo apt remove $(dpkg --get-selections docker.io docker-compose docker-doc docker-buildx podman-docker containerd runc | cut -f1)
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

curl -sSL https://get.docker.com | sh
sudo usermod -aG docker $USER
sudo apt-get install docker-compose-plugin
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
