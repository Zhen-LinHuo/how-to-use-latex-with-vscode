# 在 Windows 下安装 LaTeX

在下载上文提到的 ISO 镜像后，双击该 ISO 文件即可挂载。切换到挂载的镜像所在的目录，运行 `install-tl-Windows.bat`，指定安装目录后采用默认设置安装即可。

依次使用以下指令查看是否有版本信息输出，从而确认安装是否成功：

```bash
xelatex --version
pdflatex --version
lualatex --version
latexmk --version
```
