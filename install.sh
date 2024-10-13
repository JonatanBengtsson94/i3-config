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

## Customization

# Create config dirs
mkdir -p ~/.config/i3/ ~/.config/i3blocks/ ~/.config/kitty/ ~/.config/picom/

# Copy config files
cp -r ./i3 ~/.config/i3/
cp -r ./i3blocks ~/.config/i3blocks/
cp -r ./kitty ~/.config/kitty/
cp -r ./picom ~/.config/picom/

echo "Installation complete, rebooting now"
sudo shutdown -r +0.05

