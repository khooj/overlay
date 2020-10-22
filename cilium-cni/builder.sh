source $stdenv/setup

mkdir -p $out/bin/
cp $src $out/bin/cilium-cni
chmod a+x $out/bin/cilium-cni