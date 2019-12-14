add_cus_dep('glo', 'gls', 0, 'makeglossaries');
add_cus_dep('blo', 'bls', 0, 'makeglossaries');
add_cus_dep('acn', 'acr', 0, 'makeglossaries');
sub makeglossaries {
    system("xindy -L persian-variant1 -C utf8 -I xindy -M '$_[0]'.xdy -t '$_[0]'.glg -o '$_[0]'.gls '$_[0]'.glo");
    system("xindy -L persian-variant1 -C utf8 -I xindy -M '$_[0]'.xdy -t '$_[0]'.blg -o '$_[0]'.bls '$_[0]'.blo");
    system("xindy -L english -C utf8 -I xindy -M '$_[0]'.xdy -t '$_[0]'.alg -o '$_[0]'.acr '$_[0]'.acn");
}

@default_files = ('thesis.tex');
$pdf_mode = 1;
$pdflatex= "xelatex -synctex=1 -halt-on-error %O %S"

