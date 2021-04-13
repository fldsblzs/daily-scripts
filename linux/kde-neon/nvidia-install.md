# Nvidia installation

```bash
# 1 Purge existing nvidia drivers
sudo apt-get purge nvidia*

# 2 Add repository
sudo add-apt-repository ppa:graphics-drivers
sudo apt-get update

# 3 Install specific driver version
sudo apt-get install nvidia-driver-460

# 4 Reboot and enroll key for secure boot
```