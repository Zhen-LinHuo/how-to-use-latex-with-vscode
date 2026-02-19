# Install Visual Studio Code in Debian Linux Distributions

In Debian distributions, you can follow following instructions to add VSCode to your software sources, for easier installation and updates.

First, run following command in terminal to install GPG key:

```bash
sudo apt-get install wget gpg &&
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg &&
sudo install -D -o root -g root -m 644 microsoft.gpg /usr/share/keyrings/microsoft.gpg &&
rm -f microsoft.gpg
```

Then, create a new source file with `sudo nano /etc/apt/sources.list.d/vscode.source`{.bash}. With following content, VSCode repository can be added to system software sources:

```
Types: deb
URIs: https://packages.microsoft.com/repos/code
Suites: stable
Components: main
Architectures: amd64,arm64,armhf
Signed-By: /usr/share/keyrings/microsoft.gpg
```

Finally, update software source cache, and install VSCode:

```bash
sudo apt install apt-transport-https && sudo apt update # Update software source cache
sudo apt install code # code-insiders if you want VSCode Insider
```