# LaTeX Workshop

LaTeX Workshop 是 Visual Studio Code 上颇为经典的一款扩展，提供了预览、编译选项管理、自动完成、关键词高亮等功能。这个插件也是我们选择 VSCode 而不是其他工具来编写和编译 LaTeX 文档的最主要原因。

要安装 LaTeX Workshop，只需要打开左侧的扩展选项（或按快捷键 `Ctrl+Shift+X`），搜索 `LaTeX Workshop`，点击安装即可。

安装完成后，点击齿轮图标进入管理菜单，选择"设置"进入其配置界面。

配置部分并不复杂。在搜索栏中已有的内容后添加 `tools`，在弹出的第一个栏目下点击 "在 `settings.json` 中编辑"，然后粘贴下述内容即可获得较为通用的配置：

```json
"latex-workshop.latex.autoBuild.run": "never",  // 不在保存时自动编译
"latex-workshop.showContextMenu": true, // 启用 LaTeX 上下文菜单
"latex-workshop.intellisense.package.enabled": true,    // 根据加载的包，自动完成命令或包
"latex-workshop.message.error.show": false,
"latex-workshop.message.warning.show": false,
"latex-workshop.latex.recipe.default": "lastUsed",  // 默认将上次使用的编译方法作为默认编译动作
"latex-workshop.view.pdf.internal.synctex.keybinding": "double-click",
// 编译时调用的指令组
"latex-workshop.latex.tools": [
    {
        // 采用插件预设值的 Latexmk
        "name": "latexmk",
        "command": "latexmk",
        "args": [
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "-pdf",
            "-outdir=%OUTDIR%",
            "%DOCFILE%"
        ]
    },
    {
        // 全部根据 .latexmkrc 文件设置进行编译的 Latexmk
        "name": "latexmk_auto",
        "command": "latexmk",
        "args": []
    },
    {
        // 根据 .latexmkrc 文件设置进行辅助文件清理
        "name": "latexmk_auto_clean",
        "command": "latexmk",
        "args": [
            "-c"
        ]
    },
    {
        // LuaLaTeX
        "name": "lualatex",
        "command": "lualatex",
        "args": [
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "%DOCFILE%"
        ]
    },
    {
        // XeLaTeX
        "name": "xelatex",
        "command": "xelatex",
        "args": [
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "%DOCFILE%"
        ]
    },
    {
        // PDFLaTeX
        "name": "pdflatex",
        "command": "pdflatex",
        "args": [
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "%DOCFILE%"
        ]
    },
    {
        // Biber
        "name": "biber", 
        "command": "biber",
        "args": [
            "%DOCFILE%"
        ]
    },
    {
        // BibTeX
        "name": "bibtex",
        "command": "bibtex",
        "args": [
            "%DOCFILE%"
        ]
    }
],
"latex-workshop.latex.recipes": [
    {
        // 完全根据 .latexmkrc 文件进行编译
        "name": "Latexmk (auto)",
        "tools": [
            "latexmk_auto"
        ]
    },
    {
        // 与上一个对应，用于清理输出目录的辅助文件
        "name": "Latexmk Clean (auto)",
        "tools": [
            "latexmk_auto_clean"
        ]
    },
    // 各个编辑器和 Biber 组合，用于含目录和参考文献的场景
    {
        "name": "lualatex -> biber -> lualatex*2",
        "tools": [
            "lualatex",
            "biber",
            "lualatex",
            "lualatex"
        ]
    },
    {
        "name": "xelatex -> biber -> xelatex*2",
        "tools": [
            "xelatex",
            "biber",
            "xelatex",
            "xelatex"
        ]
    },
    {
        "name": "pdflatex -> biber -> pdflatex*2",
        "tools": [
            "pdflatex",
            "biber",
            "pdflatex",
            "pdflatex"
        ]
    },
    // 各个编译器和 BibTeX 的组合，用于含目录和参考文献的场景
    {
        "name": "lualatex -> bibtex -> lualatex*2",
        "tools": [
            "lualatex",
            "bibtex",
            "lualatex",
            "lualatex"
        ]
    },
    {
        "name": "xelatex -> bibtex -> xelatex*2",
        "tools": [
            "xelatex",
            "bibtex",
            "xelatex",
            "xelatex"
        ]
    },
    {
        "name": "pdflatex -> bibtex -> pdflatex*2",
        "tools": [
            "pdflatex",
            "bibtex",
            "pdflatex",
            "pdflatex"
        ]
    },
    // 单一编译器命令
    {
        "name": "LuaLaTeX",
        "tools": [
            "lualatex"
        ]
    },
    {
        "name": "XeLaTeX",
        "tools": [
            "xelatex"
        ]
    },
    {
        "name": "PDFLaTeX",
        "tools": [
            "pdflatex"
        ]
    },
    {
        "name": "Latexmk",
        "tools": [
            "latexmk"
        ]
    },
    {
        "name": "Biber",
        "tools": [
            "biber"
        ]
    },
    {
        "name": "BibTeX",
        "tools": [
            "bibtex"
        ]
    }
],
```

如此，在编写好你的 LaTeX 文档后，只需转到 LaTeX Workshop 的侧边栏页面，执行一次编译指令，后续点击 `.tex` 文件编辑窗口右上角的构建运行按钮（`Ctrl+Alt+B`），即可一键编译为 PDF 了。
