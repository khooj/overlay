# do nothing
source $stdenv/setup
mkdir -p $out
cp $src $out/$bin_name
chmod a+x $out/$bin_name