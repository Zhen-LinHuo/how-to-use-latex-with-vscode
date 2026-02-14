# 1. 设定输出模式
# $pdf_mode = 1; # 使用 pdflatex (默认)
# $pdf_mode = 5; # 使用 xelatex (这是最现代的写法，直接告诉 latexmk 目标是 xelatex)

# 兼容性更好的写法：强制将 pdflatex 命令重定义为 xelatex
# 这样即使你只输入 latexmk（不带参数），它也会默认跑 xelatex
$pdf_mode = 5;

# 2. 设定参考文献工具
# 0: Skip, 1: BibTeX, 1.5: BibTeX (但在 Biber 模式下会自动切换), 2: Biber
$bibtex_use = 1.5;

# 3. 指定 Biber 的命令参数 (可选，解决一些乱码问题)
# %O 是选项占位符，%S 是源文件占位符
$biber = "biber %O %S";

# 4. 预览设置 (使用 -pvc 连续预览模式时)
# 如果你在 AlmaLinux 上用，可能需要指定默认 PDF 阅读器，否则它可能打不开
# $pdf_previewer = "start evince %O %S"; # Linux 常用
# $pdf_previewer = "start chrome %O %S"; # 使用浏览器

# 5. 清理设置
# 运行 latexmk -c 时要清理的额外文件后缀
$clean_ext = "synctex.gz xdv nav snm vrb bbl run.xml";

# 6. 输出目录 (可选)
# 如果你想让所有中间文件都去 build 文件夹，不污染根目录
$out_dir = 'Build';