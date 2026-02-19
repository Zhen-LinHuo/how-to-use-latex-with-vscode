# Advance Technique: Latexmk

As what is shown in recipe settings: if your document has a table of contents, you need to compile it twice with same compiler to have a PDF with everything correct; if your document has a bibliography, you need to compile it first, and process references with BibTeX or Biber, then compile it another time (or twice if it also has a table of contents). For more complex feature, you may even want to run some programme or code during compiling process. All these needs make recipes more and more complex and not that easy to use.

So here comes the latexmk. It is a Perl script that you only need to run it once, and it will handle all other things for you. [This](https://mgeier.github.io/latexmk.html) is a tutorial page I found on Internet showing how to directly use latexmk.

Moreover, latexmk can work with `.latexmkrc` file to customise running parameters. And this is why I recommend to add `Latexmk (auto)` and `Latexmk Clean (auto)` settings to our LaTeX Workshop settings. The former will build your document completely based on the `.latexmkrc` file in your directory (if not exists, then reference to user default one or even the system default one), and the latter can correspondingly do clean-up.

Following are some introduction to several common-used `.latexmkrc` settings. The `.latexmkrc` file used for this document can also help you understand how to write such file.

## Output And Compiler

Define whether and how to generate PDF file with `$pdf_mode`:

-   0: Do not generate PDF file
-   1: Use PDFLaTeX
-   2: Use PS2PDF
-   3: Use DVIPDF
-   4: Use LuaLaTeX
-   5: Use XeLaTeX

PDFLaTeX is the most simple one and can run very quick; XeLaTeX and LuaLaTeX works well with UTF-8. These three are mostly used options.

For reference tools, use `$bibtex_use`

-   0: Do not run BibTeX and Biber, will not clean `.bbl` file
-   1: Run BibTeX or Bibier only when `.bib` file exists, will not clean `.bbl` file.
-   1.5: Run BibTeX or Bibier only when `.bib` file exists, and clean `.bbl` file only when `.bib` file exists
-   2: Run BibTeX or Bibier only when `.bib` file exists, and clean `.bbl` file no matter `.bib` file exists or not

For Biber, a universal setting be like this: `biber = "biber %O %S";`

## Main File

Main file(s) that need to be compiled can be set with `@default_files`, and file(s) need to be ignored can be set with `@default_excluded_files`. Here is one version for reference:

```perl
@default_files = ("build-en-GB.tex", "build-zh-CN.tex");
@default_excluded_files = ();
```

## Output Directory And Clean-up Settings

The output directory can be set with `$out_dir`. Final output PDF and other supportive files generated during compile will all be placed there.

Define what file extensions should be cleaned with `$out_dir`. Keep certain supportive files on purpose might be helpful if your document is a paper that need to be published to a journal.
