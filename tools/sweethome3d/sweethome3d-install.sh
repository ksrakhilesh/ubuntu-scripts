#!/bin/bash
# -------------------------------------------------------
# Script to install Sweet Home 3D
# -------------------------------------------------------

# sweethome3d
sudo apt-get -y install libjava3d-java

# install latest version under $HOME/.local/apps/SweetHome3D
mkdir $HOME/.local/apps
wget -O sweethome3d.tgz https://vorboss.dl.sourceforge.net/project/sweethome3d/SweetHome3D/SweetHome3D-5.3/SweetHome3D-5.3-linux-x64.tgz
tar -xvf sweethome3d.tgz
mv SweetHome3D-* $HOME/.local/apps/SweetHome3D
rm sweethome3d.tgz

# install sweethome3d project icon
sudo wget -O "/usr/share/icons/sweethome3d.png" https://github.com/NicolasBernaerts/ubuntu-scripts/raw/master/tools/sweethome3d/sweethome3d.png

# declare sweethome3d mimetype
sudo wget -O "/usr/share/mime/packages/sweethome3d.xml" https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/tools/sweethome3d/sweethome3d.xml
sudo update-mime-database /usr/share/mime

# declare desktop file
wget -O $HOME/.local/share/applications/sweethome3d.desktop https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/tools/sweethome3d.desktop
sed -i "s/##USER##/$USER/g" $HOME/.local/share/applications/sweethome3d.desktop
chmod +x $HOME/.local/share/applications/sweethome3d.desktop