if [ "$USER" != "root" ] 
then
    echo "Use the setup script with 'sudo'!"
fi

# Install exa (better ls)
sudo apt-get install exa

# Install neofetch (because it's a must)
sudo apt-get install neofetch

# Install htop
sudo apt-get install htop

# Download FUSE (https://github.com/AppImage/AppImageKit/wiki/FUSE)
sudo add-apt-repository universe
sudo apt install libfuse2

# Install cargo
sudo apt-get install cargo

# Install node
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash
sudo apt-get install -y nodejs

# Update (manual) python
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install python3.11
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 100
sudo update-alternatives --set python3 /usr/bin/python3.11
sudo apt install python3-setuptools python3-pip

# Install neovim (unstable)
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

# Install all neovim/neovim plugin requirements:
    # Update pynvim
    pip3 install pynvim --upgrade

    # Install ripgrep (for telescope)
    sudo apt-get install ripgrep

    # Install fd (for telescope)
    sudo apt-get install fd-find

    # Install tree-sitter (with cargo)
    cargo install tree-sitter-cli