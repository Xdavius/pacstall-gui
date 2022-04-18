#!/usr/bin/bash

pacstall -PI yad

sudo mkdir -p /usr/lib/pacstall-gui  && cd /usr/lib/pacstall-gui
sudo chmod -R a+w /usr/lib/pacstall-gui
wget -q https://github.com/cat-master21/pacstall-gui/raw/master/disable-root-check.diff -O ./disable-root-check.diff | wget -q https://github.com/cat-master21/pacstall-gui/raw/master/settings.sh -O settings.sh

sudo wget -q --show-progress --progress=bar:force -O "/usr/bin/pacstall-gui" "https://github.com/cat-master21/pacstall-gui/raw/master/pacstall-gui"
sudo chmod +x "/usr/bin/pacstall-gui"
