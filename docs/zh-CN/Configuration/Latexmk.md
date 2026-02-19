# 进阶技巧：Latexmk

就如同前文中设置 Recipe 时所展现的一样，如果文章有目录，你需要连续用同一个编译器编译两次才能获得正确的 PDF；而如果文章有参考文献，还需要先编译一次，再经过 Bibier 或 BibTeX，再由同一个编译器编译一次（如果文章含目录，则需要再编译两次）才可以。有时，为应对复杂的功能需求，甚至还需要在编译时运行一些外部程序。随着需求越来越复杂，显然只是配置 Recipe 会让选项越来越多且不一定实用。

Latexmk 是一个 Perl 脚本，它可以为你处理所有这些事情。[这里](https://mgeier.github.io/latexmk.html)是我发现的一个介绍页面，介绍了如何直接使用 latexmk。

Latexmk 还可以配合对应的 `.latexmkrc` 文件来管理运行选项。这也是之前的配置文件中我们添加了 `Latexmk (auto)` 和 `Latexmk Clean (auto)` 这两项的原因。前者将另 latexmk 完全根据你的项目目录的（如果没有，则会参考当前用户的或者系统的）`.latexmkrc` 文件中的设置来编译生成文档；后者则用于对应的执行清理辅助文件的工作。

以下是关于 `.latexmkrc` 中常用的几种设置的介绍。可以参考本项目中采用的 `.latexmkrc` 来进一步了解各个设置的具体用法。

## 设置输出和编译器

使用 `$pdf_mode` 设置是否输出 PDF 文件：

-   0： 不生成 PDF
-   1： 使用 PDFLaTeX 编译
-   2： 使用 PS2PDF 编译
-   3： 使用 DVIPDF 编译
-   4： 使用 LuaLaTeX 编译
-   5： 使用 XeLaTeX 编译

其中，PDFLaTeX 生成很快， XeLaTeX 和 LuaLaTeX 对 UTF-8 支持更好，都是比较常用的选项。

对于参考文献工具，使用 `$bibtex_use` 选项来控制。

-   0： 不使用 BibTeX 和 Bibier，也不会清除 `.bbl` 文件
-   1： 仅当 `.bib` 文件存在时使用 BibTeX 或 Bibier，不会清除 `.bbl`
    文件
-   1.5： 仅当 `.bib` 文件存在时使用 BibTeX 或 Bibier，仅当 `.bib`
    文件存在时清除 `.bbl` 文件
-   2： 仅当 `.bib` 文件存在时使用 BibTeX 或 Bibier，无论 `.bib`
    文件是否存在，都会清除 `.bbl` 文件

此外，对于 Bibier，一般使用如下的参数配置：`biber = "biber %O %S";`

## 设置主文件

可以通过 `@default_files` 设置需要编译的主文件.需要忽略的文件则可通过 `@default_excluded_files` 设置。一个可供参考的范例如下：

```perl
@default_files = ("build-en-GB.tex", "build-zh-CN.tex");
@default_excluded_files = ();
```

## 输出路径和清理

可以通过 `$out_dir` 设置输出文件所在的目录。编译中产生的辅助文件也会放在那里。

通过 `$out_dir` 设置需要清理的中间文件。选择性的保留中间文件对需要发表到期刊的论文可能很有帮助。