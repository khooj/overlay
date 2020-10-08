# do nothing
source $stdenv/setup
mkdir -p $out/bin
cp $src $out/bin/$pname
chmod a+x $out/bin/$pname