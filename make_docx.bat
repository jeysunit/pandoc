@echo off
rem chcp 65001

IF NOT DEFINED WORKSPACE set WORKSPACE=.

set "pandocexe=C:\Program Files (x86)\Pandoc\pandoc.exe"
set "PANDOC_MARKDOWN_OPT=-f markdown_github+tex_math_dollars+definition_lists+fancy_lists+pandoc_title_block+superscript"
set "reffile=.\小見出し改ページテンプレート.docx"
set "outfile=.\%~n1.docx"

"%pandocexe%" --standalone %PANDOC_MARKDOWN_OPT% -smart --reference-doc="%reffile%" -t docx -o "%outfile%" %1

