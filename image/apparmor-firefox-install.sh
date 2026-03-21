#!/bin/sh
# Re-declare apparmor access after firefox update

# download and run main script
sudo wget -O /usr/local/bin/apparmor-firefox https://github.com/NicolasBernaerts/ubuntu-scripts/raw/refs/heads/master/mozilla/apparmor-firefox
sudo chmod +x /usr/local/bin/apparmor-firefox
/usr/local/bin/apparmor-firefox

# apt hook
sudo wget -O /etc/apt/apt.conf.d/99apparmor-firefox https://github.com/NicolasBernaerts/ubuntu-scripts/raw/refs/heads/master/mozilla/99apparmor-firefox

