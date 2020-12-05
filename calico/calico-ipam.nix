{ fetchurl, stdenv, lib }:
stdenv.mkDerivation {
  pname = "calico-ipam";
  version = "3.14";
  builder = ./builder.sh;
  src = builtins.fetchurl {
    url = "https://github.com/projectcalico/cni-plugin/releases/download/v3.14.0/calico-ipam-amd64";
    sha256 = "sha256:18dv1k385iqwdv14sqlxh5vjw8djbzq7fi884ymnfaq6hxk41b3k";
  };
}
