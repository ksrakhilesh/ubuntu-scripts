#!/usr/bin/env bash
# Declaration of empty document models for Nautilus
# Tested on Ubuntu 18.04 LTS

# test Nautilus
command -v nautilus >/dev/null 2>&1 || { echo "Nautilus has not been detected. Please install it first."; exit 1; }

# get templates user path
DIR_TEMPLATE=$(xdg-user-dir TEMPLATES)

# download and install empty documents templates
wget -O "${DIR_TEMPLATE}/Calc Sheet.ods" https://github.com/NicolasBernaerts/ubuntu-scripts/blob/master/nautilus/nautilus-newfile-models/Calc%20Sheet.ods?raw=true
wget -O "${DIR_TEMPLATE}/Writer Document.odt" https://github.com/NicolasBernaerts/ubuntu-scripts/blob/master/nautilus/nautilus-newfile-models/Writer%20Document.odt?raw=true
wget -O "${DIR_TEMPLATE}/Bash Script.sh" https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/nautilus/nautilus-newfile-models/Bash%20Script.sh
wget -O "${DIR_TEMPLATE}/Text File.txt" https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/nautilus/nautilus-newfile-models/Text%20File.txt

# set execute attributes
chmod +x "${DIR_TEMPLATE}/Bash Script.sh"
