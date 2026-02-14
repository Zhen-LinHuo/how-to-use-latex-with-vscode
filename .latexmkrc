# 1. 设定输出模式
# 0 代表不生成 pdf
# 1 代表使用 $pdfltex；
# 2 代表使用 $ps2pdf；
# 3 代表使用 $dvipdf；
# 4 代表使用 $lualatex；
# 5 代表使用 $xelatex

# 兼容性更好的写法：强制将 pdflatex 命令重定义为 xelatex，这样即使只输入 latexmk（不带参数），它也会默认跑 xelatex
# $pdflatex = "xelatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S";
$pdf_mode = 5;

# 2. 设定参考文献工具
# 0: 不使用 bibtex 或 biber； 清空的时候不会清空 .bbl 文件
# 1: 只有 bib 文件存在才使用 bibtex 或 biber；清空的时候不会清空 .bbl 文件
# 1.5: 只有 bib 文件存在才使用 bibtex 或 biber；当 bib 文件存在时会清空 bbl，否则不会清空
# 2: 有必要更新bbl文件时，运行 bibtex 或 biber，无需测试 bib 文件存在与否；清空删除 bbl
$bibtex_use = 2;

# 3. 指定 Biber 的命令参数 (可选，解决一些乱码问题)
# %O 是选项占位符，%S 是源文件占位符
$biber = "biber %O %S";

# 4. 预览设置 (使用 -pvc 连续预览模式时)
# 设置预览模式，相当于 -pv 选项，在编译结束会开启预览
# $view 设置预览的文件格式
$preview_mode = 1;
$view = "pdf";

# 如果你在 AlmaLinux 上用，可能需要指定默认 PDF 阅读器，否则它可能打不开
# $pdf_previewer = "start evince %O %S"; # Linux 常用
# $pdf_previewer = "start chrome %O %S"; # 使用浏览器

# 5. 清理设置
# 运行 latexmk -c 时要清理的额外文件后缀
$clean_ext = "synctex.gz acn acr alg aux bbl bcf blg brf fdb_latexmk glg glo gls idx ilg ind ist lof log lot out run.xml toc dvi";

# 6. 主文件
# 可以设定一个固定的主文件，这样无论当前正在编辑哪个文件，latexmk都可以选择正确的主文件来编译整个项目
# 设置 latexmk 编译的文件，和不需要编译的文件，可以是多个
@default_files = ("main.tex");
@default_excluded_files = ();

# 6. 输出目录 (可选)
# 如果你想让所有中间文件都去 build 文件夹，不污染根目录
$out_dir = "Build";