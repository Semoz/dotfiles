#!/bin/sh
set -e
cd "$(dirname "$0")"
ROOT_PATH=$(pwd -P)
source message
info "> Link Vmware Files.."

# Create VMWare Share Files
DESTINATION_PATH=$HOME"/Documents/ShareData"
mkdir -p $DESTINATION_PATH

# Link VMWare Share Development
DESTINATION_PATH=$HOME"/Documents/ShareData/Development"
SOURCE_PATH=$HOME"/_MacData/Development"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

# Link VMWare Share Downloads
DESTINATION_PATH=$HOME"/Documents/ShareData/Downloads"
SOURCE_PATH=$HOME"/Downloads"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

# Link VMWare Share QQ User Chat Log
DESTINATION_PATH=$HOME"/Documents/ShareData/QQ"
SOURCE_PATH=$HOME"/_AppData/QQ/QQUser"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

# Link VMWare Share Repository
DESTINATION_PATH=$HOME"/Documents/ShareData/Repository"
SOURCE_PATH=$HOME"/_MacData/Development/Environment/Maven/Repository"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

# Link VMWare Share Windows Software
DESTINATION_PATH=$HOME"/Documents/ShareData/Windows"
SOURCE_PATH=$HOME"/_MacData/Virtual Machine/Software/Windows"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

# Link VMWare Share Windows XP SVN
DESTINATION_PATH=$HOME"/Documents/ShareData/VisualSVN"
SOURCE_PATH=$HOME"/_MacData/Virtual Machine/Data/VisualSVN"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

################################################################################
# Link VMWare Create Path
DESTINATION_PATH=$HOME"/Documents/Virtual Machines.localized"
SOURCE_PATH=$HOME"/_MacData/Virtual Machine/Vmware"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

DESTINATION_PATH=$HOME"/_Virtual Machine"
SOURCE_PATH=$HOME"/_MacData/Virtual Machine"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

# Link Parallels Create Path
# DESTINATION_PATH=$HOME"/Parallels"
# SOURCE_PATH=$HOME"/Virtual Machine/Parallels"
# link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"