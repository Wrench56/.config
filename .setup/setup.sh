echo "Use with 'sudo'!"

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

# Install neovim (unstable)
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

# Install all neovim/neovim plugin requirements:
    # Update pynvim
    pip install pynvim --upgrade

    # Install fd (for telescope)
    sudo apt-get install fd-find

    # Install tree-sitter (with cargo)
    cargo install tree-sitter-cli