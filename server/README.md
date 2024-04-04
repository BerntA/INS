# Introduction

Steam introduced a game breaking change for SDK 2006 based mods many years ago, this left most mods for this engine branch broken because they were not able to either
- Display any servers in the server browser
- Unable to mount VPKs properly

one option was to disable sv_master_legacy_mode in order to announce the server to Valve's master server, for Insurgency however, the Steam client library shipped with SDK 2006 server is outdated, thus this fix does not help fully!

This repo contains the necessary configs to get your server up and running for the good'ol Insurgency mod.

# Hosting a server

## Hosting on LINUX
Sadly Valve has removed the native Linux binaries for the 2006 engine, thus you have to rely on something like Wine, which in fact - works great!

- Download SteamCMD
- Download Wine
- Download xvfb if you are running a headless OS (server - no GUI)
- Launch SteamCMD and enter
	- @sSteamCmdForcePlatformType windows
	- force_install_dir ./ins
	- login anonymous
	- app_update 17705
- Copy the files in the server folder to your ./ins/ folder
- CD to your ins (server) folder
- Run chmod +x ./run.sh
- Run Xvfb :0 -screen 0 1024x768x16 &
- Run ./run.sh

To close down your server, run wineserver -k!
This was tested on Ubuntu 18.04 without issues.

## Hosting on Windows

- Download SteamCMD
- Launch SteamCMD and enter
	- force_install_dir ./ins
	- login anonymous
	- app_update 17705
- Copy the files in the server folder to your ./ins/ folder
- Launch restarter.bat
