# ImageMagick: PDF to PNG
pdftopng() {
  if [ $# -eq 0 ];
  then
    echo "usage: pdftopng IN.pdf OUT.png density[120] quality[95] shave_x[100] shave_y[100]"
  else
    convert -density ${3:-120} -quality ${4:-95} -background white -alpha remove -shave ${5:-100}x${6:-100} "$1" -append "$2"
  fi
}

# Compress PDF
compresspdf() {
    echo 'Usage: compresspdf [input file] [output file] [screen|ebook|printer|prepress]'
    gs -sDEVICE=pdfwrite -dNOPAUSE -dQUIET -dBATCH -dPDFSETTINGS=/${3:-"screen"} -dCompatibilityLevel=1.4 -sOutputFile="$2" "$1"
}

# Syntax highlight clipboard
shl() {
  pbpaste | \
    highlight \
        --font Inconsolata \
        --font-size $1 \
        --src-lang $2 \
        --out-format rtf | \
    pbcopy
}
