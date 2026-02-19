# Install LaTeX

A recommended approach to install LaTeX is to install TeX Live. [Full guide](https://www.tug.org/texlive/quickinstall.html) can be found on its official website.

A brief induction here:

-   For **Windows**, it is recommended to download [ISO Image](https://www.tug.org/texlive/acquire-iso.html). Mount the image and install via running the installer inside.
-   For **RHEL Linux Distribution** (e.g. RHEL, CentOS Stream, Rocky Linux, AlmaLinux, etc.), it is also good to install via ISO Image.
-   For **Debian Linux Distribution** (e.g. Debian, Ubuntu, Kubuntu, Xubuntu, Linux Mint, etc.), can just run `sudo apt install texlive-full` in terminal to install.
-   For **MacOS & MacOSX**, it is recommended to install
    [MacTeX](https://www.tug.org/mactex/), which has full content of TeX Live, and some extra content especially for Mac users.

Although TeX Live official recommends to install with online installer, but unless your internet environment is good enough, install with ISO Image can usually save your time.

Once you installed TeX Live, future update can be run with `tlmgr update --all` If you want cross-version (e.g. from TeX Live 2024 to TeX Live 2025), it is better to uninstall/remove old version and directly install the new version. In generall, TeX Live almost do not need update or upgrade.