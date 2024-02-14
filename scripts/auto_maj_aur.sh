#!/usr/bin/bash

# yes o | sudo pacman -Syyu


aur_directory="${HOME}/Repos/"
i=1
for x in ${aur_directory}* ; do
	echo $x
done

for dir in ${aur_directory}*
do
        echo "~> ${dir}"
        cd ${dir} && git remote update >> /dev/null

        if git status -uno | grep "Déjà à jour." >> /dev/null; then
                echo "Up to date"
        else
                git pull && yes o | makepkg -sri
        fi
done

# sudo pacman -Sc	# Remove all cache
sudo paccache -r 	# Remove all cache except the last 3 versions
