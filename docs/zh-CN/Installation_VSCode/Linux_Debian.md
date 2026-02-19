# 在 Linux (Debian 系发行版) 下安装 Visual Studio Code

在 Debian 系发行版下，可以通过如下方式将 VSCode 加入软件源，从而便于安装和更新。

首先，打开终端，运行以下脚本来安装签名密钥：

```bash
sudo apt-get install wget gpg &&
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg &&
sudo install -D -o root -g root -m 644 microsoft.gpg /usr/share/keyrings/microsoft.gpg &&
rm -f microsoft.gpg
```

随后，使用 `sudo nano /etc/apt/sources.list.d/vscode.source` 创建软件源配置，将 VSCode 的软件包仓库加入系统的软件源列表。其中文件内容如下：

```
Types: deb
URIs: https://packages.microsoft.com/repos/code
Suites: stable
Components: main
Architectures: amd64,arm64,armhf
Signed-By: /usr/share/keyrings/microsoft.gpg
```

最后，使用以下命令更新软件源缓存并且安装 VSCode：

```bash
sudo apt install apt-transport-https && sudo apt update # 更新软件源缓存
sudo apt install code # 如果你喜欢尝鲜，把 code 换成 code-insiders
```