# install LaTeX in RHEL Linux Distributions

Mount the ISO Image mentioned above by double-click it. Switch to Image path, right click to open terminal there. Then, run following commands:

```bash
sudo perl ./install-tl --no-interaction
```

Type your password, and then the installer will start installation as adminstrator.

After installation, it is necessary to add TeX Live path to PATH for system and other software's use. One reliable apprach is to change environment variables of current user via `sudo nano ~/.bashrc`. Add new line at the end with these content:

```
export PATH=<TeX Live Installation Path>:$PATH
export MANPATH=/usr/share/man:<man Path of TeX Live>:$MANPATH
export INFOPATH=<info Path of TeX Live>:$INFOPATH
```

For instance, when installing on Inter x86-64 machine, the content should be:

```
export PATH=$PATH:/usr/local/texlive/2025/bin/x86_64-linux:$PATH
export MANPATH=/usr/share/man:/usr/local/texlive/2025/texmf-dist/doc/man:$MANPATH
export INFOPATH=/usr/local/texlive/2025/texmf-dist/doc/info:$INFOPATH
```

Then, run `source ~/.bashrc` to refresh environment variables, and install necessary perl packages with `sudo dnf install perl-core perl-Time-HiRes perl-Unicode-Normalize perl-LWP-Protocol-https`, check if they successfully show version detail to double-check wether installation is successful:

```bash
xelatex --version
pdflatex --version
lualatex --version
latexmk --version
```