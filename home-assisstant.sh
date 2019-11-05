#Script that sets up my home assisstant.
# Sourced from https://www.reddit.com/r/homeassistant/comments/9xdizy/using_a_raspberry_pi_for_more_than_hassio/

sudo apt-get update && sudo apt-get upgrade

curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh

sudo systemctl enable docker

sudo systemctl start docker

sudo usermod -aG docker pi

sudo apt install jq apparmor-utils socat

sudo reboot

# Then run this to get the right things
# sudo curl -sL https://raw.githubusercontent.com/home-assistant/hassio-installer/master/hassio_install.sh | sudo bash -s -- -m raspberrypi3
