{ fetchurl, stdenv }:
stdenv.mkDerivation {
  pname = "calico-ipam";
  version = "3.14";
  builder = ./builder.sh;
  bin_name = "calico-ipam";
  src = builtins.fetchurl
    "https://github.com/projectcalico/cni-plugin/releases/download/v3.14.0/calico-ipam-amd64";
}
