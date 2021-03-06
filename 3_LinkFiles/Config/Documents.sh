#!/bin/sh -e

cd "$(dirname "$0")"
ROOT_PATH=$(pwd -P)
source message

info "> Link Development Files.."
# Link Development File To Documents
DESTINATION_PATH=$HOME"/Documents/Development"
SOURCE_PATH=$HOME"/_Development"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

# Create Documents Files
DESTINATION_PATH=$HOME"/Documents/Documents"
mkdir -p $DESTINATION_PATH

info "> Link Documents Files.."
# Link Documents To Documents
DESTINATION_PATH=$HOME"/Documents/Documents/Work"
SOURCE_PATH=$HOME"/Dropbox/_Work"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

info "> Link Documents Files.."
# Link Documents To Documents
DESTINATION_PATH=$HOME"/Documents/Documents/User"
SOURCE_PATH=$HOME"/Dropbox/_User"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

info "> Link GitHub Files.."
# Link GitHub To GitHub
DESTINATION_PATH=$HOME"/Documents/GitHub"
SOURCE_PATH=$HOME"/_Development/Project/GitHub"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

# Link MuMuShare File To Documents
# DESTINATION_PATH=$HOME"/Documents/MuMu共享文件夹"
# SOURCE_PATH=$HOME"/_AppData/MuMuShare"
# link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"

# Link Volumes
DESTINATION_PATH=$HOME"/Documents/Volumes"
SOURCE_PATH="/Volumes"
link_data_path "$SOURCE_PATH" "$DESTINATION_PATH"