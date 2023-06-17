# Reinstall gzip
sudo apt-get purge gzip --allow-remove-essential
sudo apt-get install gzip

# Fixes the "Failed to retrieve available kernel versions." error
sudo apt-get purge needrestart