# Update package list
echo "Updating package list..."
sudo apt update

# Install Xorg
echo "Installing Xorg..."
sudo apt install -y xorg

# Install i3
echo "Installing i3"
sudo apt install -y i3

# Install i3 utils
echo "Installing i3bar, i3status, i3blocks"
sudo apt install -y i3bar i3status i3blocks
