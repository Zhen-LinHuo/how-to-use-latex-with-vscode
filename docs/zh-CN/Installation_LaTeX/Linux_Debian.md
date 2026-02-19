# 在 Linux (Debian 系发行版) 下安装 LaTeX

直接在终端执行 `sudo apt install texlive-full`{.bash}
进行安装，并依次使用以下指令查看是否有版本信息输出，从而确认安装是否成功：

```bash
xelatex --version
pdflatex --version
lualatex --version
latexmk --version
```
