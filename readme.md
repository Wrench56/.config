# My .config files

Here are all of my .config files. I use this directory for my Ubuntu AND Windows, thus you will find configs like ``scoop`` even when installed on Linux. This shouldn't cause any problems, but I plan creating (in the far future) releases for Ubuntu and Windows under tags.

## .setup folder

This folder contains bash scripts to setup and install requirements for the tools I use. Some examples are: latest ``neovim`` and ``neovim plugin requirements``, ``cargo``, ``node``

### fix_wsl.sh

This is a simple script trying to fix ``WSL 1`` errors. One of the things that might brake is invalid executable format.

### fix_discord_presence.sh

This script tries to fix the problems with neovim discord presence (``presence.nvim``) when using neovim thru ``WSL1``. You must pass the ``Windows`` username as the first argument and then your ``WSL`` username as the second argument. You must run this script in ``sudo``. The script must run all the time if you want ``presence.nvim`` to function properly. This script was primarily written for ``WSL1``, some suggested this script also works perfectly in ``WSL2``.
