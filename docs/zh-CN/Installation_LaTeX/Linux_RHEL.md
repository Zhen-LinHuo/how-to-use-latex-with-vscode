# 在 Linux (RHEL 系发行版) 下安装 LaTeX

在下载上文提到的 ISO 镜像后，双击该 ISO
文件即可挂载。切换到挂载的镜像所在的目录，右键选择在该位置打开终端进入命令行。输入如下命令：

```bash
sudo perl ./install-tl --no-interaction
```

按照命令行提示输入密码，即可以管理员权限开始安装。

安装完成后，我们需要将 TeX Live 的路径添加到 `PATH` 以便系统和其他程序能够使用，一个可靠的方式是通过 `sudo nano ~/.bashrc` 编辑当前用户的环境变量，在其下新增一行，内容为：

‵‵‵
export PATH=<TeX Live 的安装路径>:$PATH
export MANPATH=/usr/share/man:<TeX Live 的 man 路径>:$MANPATH
export INFOPATH=<TeX Live 的 info 路径>:$INFOPATH
‵‵‵

以在 Intel x86-64 处理器的计算机上默认安装为例，则该内容具体为：

```
export PATH=$PATH:/usr/local/texlive/2025/bin/x86_64-linux:$PATH
export MANPATH=/usr/share/man:/usr/local/texlive/2025/texmf-dist/doc/man:$MANPATH
export INFOPATH=/usr/local/texlive/2025/texmf-dist/doc/info:$INFOPATH
```

随后使用 `source ~/.bashrc` 刷新环境变量，然后使用 `sudo dnf install perl-core perl-Time-HiRes perl-Unicode-Normalize perl-LWP-Protocol-https` 安装必要的 perl 包，并依次使用以下指令查看是否有版本信息输出，从而确认安装是否成功：

```bash
xelatex --version
pdflatex --version
lualatex --version
latexmk --version
```
