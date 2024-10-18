# Update package list
echo "Updating package list..."
sudo apt update

## Installation

# Display server
sudo apt install -y xorg

# Window manager
sudo apt install -y i3 i3blocks

# Terminal
sudo apt install -y kitty

# Compositor
sudo apt install -y picom

# Background setter
sudo apt install -y nitrogen

# utils
sudo apt install -y curl

## Customization

# Fonts
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Meslo.tar.xz
mkdir -p ~/.local/share/fonts/
tar -xf Meslo.tar.xz
mv *.ttf ~/.local/share/fonts/

# Create config dirs
mkdir -p ~/.config/i3/ ~/.config/i3blocks/ ~/.config/kitty/ ~/.config/picom/

# Copy config files
cp -r ./i3/* ~/.config/i3/
cp -r ./i3blocks/* ~/.config/i3blocks/
cp -r ./kitty/* ~/.config/kitty/
cp -r ./picom/* ~/.config/picom/
cp .bashrc ~/.bashrc

echo "Installation complete"
