#!/usr/bin/env bash

export PDFLATEX="/usr/bin/pdflatex"

PROJECT_FOLDER="$(dirname $2)"

echo $2 1>&2

latexmk -f \
  -pdflatex='${PDFLATEX:?} -file-line-error --shell-escape -synctex=1' \
  -outdir="${PROJECT_FOLDER:?}/build" -pdf "$2".tex 1>&2
