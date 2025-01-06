#!/bin/bash

# Met à jour le système
sudo apt update && sudo apt upgrade -y

# Installe le serveur SSH
sudo apt install -y ssh

# Démarre le service SSH
sudo service ssh start

# Affiche les informations réseau
ip a

# Attendre 60 secondes
sleep 60

# Télécharger et exécuter le script OpenVPN
wget https://git.io/vpn -O openvpn-install.sh && \
    bash openvpn-install.sh
