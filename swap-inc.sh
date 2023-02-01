######################################################################
##
##   Swap Memory Add Script
##   Written By: Ankit Ojha
##   URL: ankitojha.com.np
##   Update on: Feb 1, 2023
##
######################################################################
#!/bin/bash
echo "-----------------------------"
echo "SWAP MEMORY IS BEING ADDED !!"
echo "-----------------------------"
echo ""
read -p "Enter SWAP SIZE to add (eg: for 2GB type -> 2G and press Enter) :" size
sudo fallocate -l $size /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show
sudo cp /etc/fstab /etc/fstab.bak
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
echo 'vm.swappiness=10' | sudo tee -a /etc/sysctl.conf
echo 'vm.vfs_cache_pressure=50' | sudo tee -a /etc/sysctl.conf
echo "---------------------------------"
echo "SWAP MEMORY ADDED SUCCESSFULLY !!"
echo "---------------------------------"
