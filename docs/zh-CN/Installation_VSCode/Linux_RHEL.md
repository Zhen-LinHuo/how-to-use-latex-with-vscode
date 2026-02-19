# 在 Linux (RHEL 系发行版) 下安装 Visual Studio Code

在 RHEL 系发行版下，可以通过如下方式将 VSCode 加入软件源，从而便于安装和更新。

首先，将 VSCode 存储库和密钥安装到系统：

```bash
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc &&
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
```

如果你使用较新的系统（对于 Fedora 则是 Fedora 22 或更高版本），使用这个命令来更新软件源缓存并安装 VSCode：

```bash
dnf check-update
sudo dnf install code # 如果你喜欢尝鲜，把 code 换成 code-insiders
```

如果你的系统较旧，则需要使用 yum 而不是 dnf：

```bash
yum check-update
sudo yum install code # 如果你喜欢尝鲜，把 code 换成 code-insiders
```
