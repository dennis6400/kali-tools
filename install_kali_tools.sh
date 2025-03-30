#!/bin/bash

##
# Prepare installation
##

set -e

# Architecture
ARCH=$(dpkg --print-architecture)
echo "Detected architecture: ${ARCH}"

# Sublime Text
INSTALL_SUBL="yes"
SUBL_VERS="4192"

# Google Chrome
INSTALL_CHROME="yes"

# Burp Professional
INSTALL_BURP="yes"
BURP_VERS="2025.2.2"

# Upgrading existing apt packages
#UPGRADE="yes"


##
# Update existing apt packages
##

echo "[+] Updating system..."
sudo apt update
if [ "${UPGRADE}" == "yes" ]; then
	sudo apt upgrade -y
else
	echo "Skipping"
fi


##
# Install apt packages
##

echo "[+] Installing basic tools..."
sudo apt install -y \
  curl wget tree htop exiftool openvpn docker.io docker-compose \
  keepassx flameshot terminator git make gcc jq xclip p7zip-full

echo "[+] Installing web hacking tools..."
sudo apt install -y \
  dirb gobuster feroxbuster ffuf testssl.sh aha

echo "[+] Installing privilege escalation tools..."
sudo apt install -y \
  windows-privesc-check unix-privesc-check

echo "[+] Installing miscellaneous tools..."
sudo apt install -y \
  libreoffice libsecret-1-0 libsecret-1-dev chromium filezilla x11-xkb-utils

echo "[+] Installing SecLists and PayloadsAllTheThings..."
sudo apt install -y seclists payloadsallthethings


##
# Clone git repositories
##

echo "[+] Cloning Git repositories into ${TOOLS_DIR}/..."
TOOLS_DIR="${HOME}/tools"
mkdir -p ${TOOLS_DIR}
cd ${TOOLS_DIR}

git clone https://github.com/swisskyrepo/InternalAllTheThings.git
git clone https://github.com/fuzzdb-project/fuzzdb.git
git clone https://github.com/HackTricks-wiki/hacktricks.git


##
# Install additional software: Sublime Text
##

if [ "${INSTALL_SUBL}" == "yes" ]; then
	echo "[+] Downloading Sublime Text..."
	cd ${TOOLS_DIR}
	wget -O sublime-text.deb "https://download.sublimetext.com/sublime-text_build-${SUBL_VERS}_${ARCH}.deb"
	sudo apt install -y ./sublime-text.deb
	rm sublime-text.deb
fi


##
# Install additional software: Google Chrome
##

if [ "${INSTALL_CHROME}" == "yes" ]; then
	if [ "$ARCH" != "arm64" ]; then
		echo "[+] Downloading Google Chrome..."
		cd ${TOOLS_DIR}
		wget -O google-chrome.deb "https://dl.google.com/linux/direct/google-chrome-stable_current_${ARCH}.deb"
		sudo apt install -y ./google-chrome.deb
		rm google-chrome.deb
	else
		echo "Skipping Google Chrome (not supported on arm64)"	
	fi
fi


##
# Install additional software: Burp Suite Professional
##

if [ "${INSTALL_BURP}" == "yes" ]; then
	echo "[+] Downloading Burp Suite Pro (manual license activation required)..."
	mkdir -p ${TOOLS_DIR}/burp
	cd ${TOOLS_DIR}/burp
	if [ "$ARCH" != "arm64" ]; then
		BURP_URL="https://portswigger-cdn.net/burp/releases/download?product=pro&version=${BURP_VERS}&type=LinuxArm64"
	else
		BURP_URL="https://portswigger-cdn.net/burp/releases/download?product=pro&version=${BURP_VERS}&type=Linux"
	fi
	wget "${BURP_URL}" -O burpsuite.sh
	chmod +x burpsuite.sh
	echo "[!] Start Burp Suite installer manually: ${TOOLS_DIR}/burp/burpsuite.sh"
fi


## 
# Complete installation
##

echo "[✓] Installation complete!"