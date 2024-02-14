# Basic things 

## Pacman

- List unused: `pacman -Qtdq`
- Remove unused: `pacman -R $(pacman -Qtdq)` or `pacman -Qtdq | pacman -Rns -`
- Clear cache: `paccache -ruk0` or `pacman -Sc` (`yay -Sc`)
- Clear all cache except 3 most recent versions: `paccache -r`
- List all packages (no distinction between pacman and yay): `pacman -Qm`
- Uninstall a package with all its dependencies that aren't useful anymore: `pacman -Rs`
- Full uninstallation to debug things: `pacman -Rsc -n`
- Install package with all its pacman dependencies: `makepkg -si`

## Network Manager CLI
```
nmcli device wifi list
nmcli device wifi connect [SSID|BSSID] password [password] (add: 'hidden yes' if hidden)
nmcli radio wifi off (shut down wifi)
```

## Mounting
### Mount phone
```
aft-mtp-mount
```

### Mount usb
```shell
lsblk -f 
mount /dev/sda2 /mnt
```

## Net tools
- Scanning all the devices on the network : `arp -a`


## Install
```shell
pacman -S freetube baobab discord bat obsidian redshift mattermost-desktop jdk-openjdk jupyter-notebook
yay -S jetbrains-toolbox asusctl messenger-nativefier whatsdesk-bin syncthingtray

pacman -S xsel rlwrap # Required for cht.sh
curl -s https://cht.sh/:cht.sh | sudo tee /usr/local/bin/cht.sh && sudo chmod +x /usr/local/bin/cht.sh

curl https://ollama.ai/install.sh | sh
```

