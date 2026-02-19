# Install LaTeX on Windows

Mount the ISO Image mentioned above by double-click it. Switch to Image path, and run the file `install-tl-Windows.bat`. Generally, just specify the installation location, and keep all other settings as default is enough.

Run following commands in terminal, check if they successfully show version detail to double-check wether installation is successful:

```bash
xelatex --version
pdflatex --version
lualatex --version
latexmk --version
```