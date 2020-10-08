source $stdenv/setup

tar xvzf $src
mkdir -p $out/bin/
mv * $out/bin/