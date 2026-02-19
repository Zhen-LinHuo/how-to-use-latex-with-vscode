# 安装 LaTeX

比较推荐的 LaTeX 安装方式是安装 TeX Live。在其官网提供了安装的[完整指导](https://www.tug.org/texlive/quickinstall.html)。

以下是一些简略的指引：

-   对于 **Windows**，建议直接下载 [ISO 文件](https://www.tug.org/texlive/acquire-iso.html)，通过挂载该镜像，执行其中的安装程序来进行安装；
-   对于 **RHEL 系 Linux 发行版** (如 RHEL, CentOS Stream, Rocky Linux, AlmaLinux 等)，可以使用 ISO 镜像进行安装；
-   对于 **Debian 系 Linux 发行版** (如 Debian, Ubuntu, Kubuntu, Xubuntu, Linux Mint 等)，可以直接在终端执行 `sudo apt install texlive-full`{.bash} 进行安装；
-   对于 **MacOS 和 MacOSX**，建议的安装版本为
    [MacTeX](https://www.tug.org/mactex/)，它包含全部的 TeX Live，以及一些专用于 Mac 的附加内容；

虽然 TeX Live 官方建议通过在线安装程序来安装，但是因为网络原因，除非你位于海外地区，否则使用 ISO 镜像可以有效节省安装时间。

在安装完 TeX Live 后，后续的升级就可通过 `tlmgr update --all` 进行更新了。如果需要跨版本升级 (如从 TeX Live 2024 升级到 TeX Live 2025)，则最好删除或卸载已有的更新，然后直接安装新版本。一般来说 TeX Live 几乎不需要升级。
