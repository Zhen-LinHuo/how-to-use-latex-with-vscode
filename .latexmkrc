# Setting output compiler
# 0 do not generate pdf
# 1 pdfltex；
# 2 ps2pdf；
# 3 dvipdf；
# 4 lualatex；
# 5 xelatex
$pdf_mode = 4;

# Bibliography tool
# 0     do not use bibtex or biber; will not clean .bbl file
# 1     only use bibtex or biber when .bib file exists; will not clean .bbl file
# 1.5   only use bibtex or biber when .bib file exists; will clean .bbl file when .bib file exists
# 2     use bibtex when biber necessary to update .bbl file; will clean .bbl file regardless of .bib file
$bibtex_use = 2;

# Bibler paramaters (Optional, for codec issues)
# %O represents options, %S represents for source file
$biber = "biber %O %S";

# Main-file settings
# Specify specific main file(s), and/or ignore specific file(s)
@default_files = ("build-en-GB.tex", "build-zh-CN.tex");
# @default_excluded_files = ();

# Output path (Optional)
# Specify where output files are saved to
$out_dir = "Build";

# Preview settings (When use -pvc continuous preview mode)
# equivalent to -pv option, will trigger preview when compile ends
# $view to set preview file format
$preview_mode = 1;
$view = "pdf";

# Clean-up settings
$clean_ext = "synctex.gz acn acr alg aux bbl bcf blg brf fdb_latexmk glg glo gls idx ilg ind ist lof log lot out run.xml toc dvi fdb_latexmk fls";