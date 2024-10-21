# Update package list
echo "Updating package list..."
sudo apt update

## Options
install_audio=false
install_bluetooth=false
install_networkmanager=false

# Prompt for audio
read -p "Do you want to install audio packages? (y/n): " response

if [[ "$response" == "y" || "$response" == "Y" ]]; then
    install_audio=true
else
    echo "Audio packages will not be installed."
fi

# Prompt for bluetooth 
read -p "Do you want to install bluetooth package? (y/n): " response

if [[ "$response" == "y" || "$response" == "Y" ]]; then
    install_bluetooth=true
else
    echo "Bluetooth package will not be installed."
fi

read -p "Do you want to install network manager? (y/n): " response

# Check the user's response
if [[ "$response" == "y" || "$response" == "Y" ]]; then
    install_networkmanager=true
else
    echo "Network Manager will not be installed."
fi

## Installation

# Display server
sudo apt install -y xorg
touch ~/.bash_profile
echo "exec startx" > ~/.bash_profile

# Window manager
sudo apt install -y i3 i3blocks

# Terminal
sudo apt install -y kitty

# Compositor
sudo apt install -y picom

# Background setter
sudo apt install -y nitrogen

# utils
sudo apt install -y curl ufw

# Optional packages
if [ "$install_audio" = true ]; then
    sudo apt install -y pipewire-audio pavucontrol 
fi

if [ "$install_bluetooth" = true ]; then
    sudo apt install -y blueman 
fi
  
if [ "$install_networkmanager" = true ]; then
    sudo apt install -y network-manager 
fi

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
