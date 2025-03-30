# Kali Tools

## Run the script *install_kali_tools.sh* without saving
 
### RAW sources

#### GitHup

```shell
https://raw.githubusercontent.com/dennis6400/kali-tools/refs/heads/master/
```

#### Pastebin

```shell
https://pastebin.com/raw/8VuMzu5e
```

### curl

#### GitHup

```shell
curl -s https://raw.githubusercontent.com/dennis6400/kali-tools/refs/heads/master/install_kali_tools.sh | sh 
```

*<u>Alternative</u>*:

```shell
sh <(curl -s https://raw.githubusercontent.com/dennis6400/kali-tools/refs/heads/master/install_kali_tools.sh)
```

#### Pastebin

```shell
curl -s https://pastebin.com/raw/8VuMzu5e | sh 
```

### wget

#### GitHup

```shell
wget -qO- https://raw.githubusercontent.com/dennis6400/kali-tools/refs/heads/master/install_kali_tools.sh | sh
```

*<u>Alternative</u>*:

```shell
sh <(curl -s https://raw.githubusercontent.com/dennis6400/kali-tools/refs/heads/master/install_kali_tools.sh)
```

#### Pastebin

```shell
wget -qO- https://pastebin.com/raw/8VuMzu5e | sh 
```

## Clone the repository & run the script *install_kali_tools.sh*

```shell
git clone https://github.com/dennis6400/kali-tools.git && cd kali-tools && chmod +x ./install_kali_tools.sh && ./install_kali_tools.sh
```

## Create *install_kali_tools.sh* manually

**Step 01** - Create *install_kali_tools.sh* file on the target system:

```shell
touch install_kali_tools.sh
```

**Step 02** - Open the created *install_kali_tools.sh* file with an editor (e.g. nano) on the target system:

```shell
nano install_kali_tools.sh
```

Copy the code of the script (e.g. from GitHup) and paste it into the created file!

**Step 02** - Execute the script:

```shell
chmod +x ./install_kali_tools.sh && ./install_kali_tools.sh
```

## Modify keyboard layout on the target system

### Modify keyboard layout with *dpkg-reconfigure* (all users)

```shell
sudo dpkg-reconfigure console-setup
```

```shell
sudo dpkg-reconfigure keyboard-configuration
```

### Modify keyboard layout with *setxkbmap* (only respective user)

The packet x11-xkb-utils must be insteled opn the target system. The packet can be installed via following command:

```shell
sudo update && sudo apt install x11-xkb-utils
```

After installing, layout language can be modified:

```shell
setxkbmap -layout de
```

```
setxkbmap -layout gb
```

Changing keyboard layout permanently:

```shell
echo "setxkbmap -layout de" >> ~/.bashrc && . ~/.bashrc
```

```shell
echo "setxkbmap -layout gb" >> ~/.bashrc && . ~/.bashrc
```

## Cleanup - Remove tools directory

```shell
rm -rf ${HOME}/tools
```
