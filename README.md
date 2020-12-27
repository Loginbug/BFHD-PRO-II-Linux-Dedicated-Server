# BFHD PRO II Linux-Dedicated-Server

Linux Dedicated Server Files for Battlefield 2 HD mod: BFHD PRO II 

Homepage of the mod:
https://www.moddb.com/mods/battlefield-hd-remastered-3/

## How to play in multiplayer on BFHD PRO II?
1) Download and install the standalone mod: http://tiny.cc/BF2HD
2) Download and install BF2HUB: https://www.bf2hub.com
3) Run a multiplayer dedicated server mod on Windows or Linux

### How to make a Linux Dedicated Server for this game?
1) Get a Linux Server running Ubuntu Server 16.04 LTS (Xenial Xerus). For a cheap server look at Scaleway.com Development Instances. 
2) Run this command on the server, it will install all software you need and start the server app with default config:
```cd $HOME && wget https://raw.githubusercontent.com/Loginbug/BFHD-PRO-II-Linux-Dedicated-Server/main/setup.sh && chmod 7777 setup.sh && ./setup.sh```

### Which is the default config?
All avaiable HD maps in random order for a 16 Players in Co-Op mode. Yes, you can change this config.

### How to stop server app?
Press CTRL+C when the server is running on your terminal

### How to start server app?
Use this command
```cd $HOME/bf2/ && sh start_bf2hub.sh```

### How to connect to server?
You will find your running server in the game serverlist. Search for "HD" server in Co-Op mode.

## How to daemonize server app?
Install screen app on Ubuntu
```apt-get install -y screen```
Then use this command
```cd $HOME/bf2/ && screen -dm sh start_bf2hub.sh```

### How to change server config, maplist and game mode?
Use a text editor to edit these files:
``` $HOME/bf2/mods/bf2/settings/serversettings.con```
``` $HOME/bf2/mods/bf2/settings/maplist.con```
Don't forget to restart server app
