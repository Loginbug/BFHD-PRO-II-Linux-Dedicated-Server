#!/bin/sh

# BF2HD PROII Patch G Server installation script
# Version 1.1
# Made by loginbug[at]gmail.com
# Tested on Scaleway.com VPS for 3€/month
# Run it only on Ubuntu Server 16.04.6 LTS (Xenial Xerus)
# BF2 Server will be installed on bf2 directory under your current home folder

# STEP 1
# Download Official BF2 Server program
cd $HOME
wget ftp://ftp.bf-games.net/server-files/bf2/bf2-linuxded-1.5.3153.0-installer.tgz
#Official BF2 Server program setup [silent]
tar -zxvf bf2-linuxded-1.5.3153.0-installer.tgz
sh bf2-linuxded-1.5.3153.0-installer.sh --target $HOME/bf2 --noexec

# STEP 2
# Download bf2hub.com server mod
wget https://www.bf2hub.com/downloads/BF2Hub-Unranked-Linux-R3.tar.gz
# Apply bf2hub.com server mod
tar -zxvf BF2Hub-Unranked-Linux-R3.tar.gz -C $HOME/bf2/

# STEP 3
# Move old classic maps in another folder
mv $HOME/bf2/mods/bf2/levels $HOME/bf2/mods/bf2/old_levels
# Download Bf2HD PROII Patch G Linux Server files
wget -O BF2HD_PROII_Patch_G_linux_server_files.tar.gz "https://pixeldrain.com/api/file/DffMoWen?download"
# Apply Bf2HD server mod
tar -zxvf BF2HD_PROII_Patch_G_linux_server_files.tar.gz -C $HOME/bf2/mods/bf2/

# STEP 4
# Randomize order of maplist
chmod -R 700 $HOME/bf2/
cp $HOME/bf2/mods/bf2/settings/maplist.con $HOME/bf2/mods/bf2/settings/maplist.con.backup
sort -R $HOME/bf2/mods/bf2/settings/maplist.con.backup > $HOME/bf2/mods/bf2/settings/maplist.con
# Start server
cd $HOME/bf2/ && sh start_bf2hub.sh

# STEP 5
# use screen command to daemonize start_bf2hub.sh
# apt-get install -y screen
# cd $HOME/bf2/ && screen -dm sh start_bf2hub.sh
