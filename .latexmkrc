# This shows how to use xelatex (http://en.wikipedia.org/wiki/XeTeX)
# with latexmk.  Xelatex uses Unicode and "supporting modern font
# technologies such as OpenType or Apple Advanced Typography.
#
#   WARNING: latexmk.pl is changing, and plans to have more internal
#     support for xelatex.
#
# Since xelatex only produces pdf files, it is a replacement for
# pdflatex.  To make it your default typesetting engine within latexmk
# you will not only need to set the $pdflatex variable to require the
# use of xelatex, but also to turn on production of pdf files and to
# turn off the production of dvi and ps files, as in the following
# code:


$pdflatex = 'xelatex --shell-escape %O %S';
$pdf_mode = 1;
$postscript_mode = $dvi_mode = 0;

$pdf_previewer = "start evince";
$pdf_update_method = 0;

# Custom dependency and function for nomencl package
add_cus_dep( 'nlo', 'nls', 0, 'makenlo2nls' );
sub makenlo2nls {
system( "makeindex -s nomencl.ist -o \"$_[0].nls\" \"$_[0].nlo\"" );
}
