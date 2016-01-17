#!/bin/bash
echo "installing moka..."
sudo add-apt-repository ppa:moka/stable
sudo add-apt-repository ppa:moka/daily
sudo apt-get update
sudo apt-get install moka-icon-theme
sudo apt-get install moka-gtk-theme
gsettings set org.gnome.desktop.interface gtk-theme 'Moka'
gsettings set org.gnome.desktop.interface icon-theme 'Moka'
echo "installing git..."
sudo apt-get install git
git config --global user.name "penguin138"
git config --global user.email "fridaythethirteens@gmail.com"
git config --global push.default matching
echo "setting up ssh..."
ssh-keygen
echo "installing zsh..."
git clone https://github.com/powerline/fonts.git
sudo ./fonts/install.sh
profile=`dconf list /org/gnome/terminal/legacy/profiles:/`
dconf write /org/gnome/terminal/legacy/profiles:/${profile}font 'Hack 11'
dconf write /org/gnome/terminal/legacy/profiles:/${profile}palette "['rgb(7,54,66)', 'rgb(220,50,47)', 'rgb(133,153,0)', 'rgb(181,137,0)', 'rgb(38,139,210)', 'rgb(211,54,130)', 'rgb(42,161,152)', 'rgb(238,232,213)', 'rgb(0,43,54)', 'rgb(203,75,22)', 'rgb(88,110,117)', 'rgb(101,123,131)', 'rgb(131,148,150)', 'rgb(108,113,196)', 'rgb(147,161,161)', 'rgb(253,246,227)']"
dconf write /org/gnome/terminal/legacy/profiles:/${profile}foreground-color "'rgb(131,148,150)'"
dconf write /org/gnome/terminal/legacy/profiles:/${profile}background-color "'rgb(0,43,54)'"
dconf write /org/gnome/terminal/legacy/profiles:/${profile}scrollback-unlimited true
sudo apt-get install zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
chsh -s /usr/bin/zsh
echo "installing java..."
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
echo "installing other tools..."
sudo apt-get install gnome-tweak-tool
sudo apt-get install unity-tweak-tool
sudo apt-get install cloc
sudo apt-get install powertop
sudo apt-get install clang
sudo apt-get install valgrind
