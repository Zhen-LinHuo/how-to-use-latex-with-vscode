# Install Visual Studio Code in RHEL Linux Distributions

In RHEL distributions, you can follow following instructions to add VSCode to your software sources, for easier installation and updates.

First, add repository and GPG key of VSCode to your system:

```bash
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc &&
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
```

If you are using newer system (for Fedora, Fedora 22 or newer), install VSCode with `dnf`:

```bash
dnf check-update
sudo dnf install code # code-insiders if you want VSCode Insider
```

If you are using older system, then you need to install with `yum`:

```bash
yum check-update
sudo yum install code # code-insiders if you want VSCode Insider
```