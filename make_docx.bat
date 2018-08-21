@echo off
cd /d %~dp0
rem chcp 65001

IF NOT DEFINED WORKSPACE set WORKSPACE=.

set "pandocexe=C:\ProgramData\chocolatey\bin\pandoc.exe"
set "PANDOC_MARKDOWN_OPT=-f markdown_github+tex_math_dollars+definition_lists+fancy_lists+pandoc_title_block+superscript"
set "reffile=.\小見出し改ページテンプレート.docx"
set IN_MARKDOWN=%1
set "outfile=.\%~n1.docx"

echo markdown形式からdocx形式に変換します
echo %IN_MARKDOWN%
echo → %outfile%
"%pandocexe%" --standalone %PANDOC_MARKDOWN_OPT% --reference-doc="%reffile%" --to=docx --output="%outfile%" %IN_MARKDOWN%

pause >null
