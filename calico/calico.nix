{ fetchurl, stdenv }:
stdenv.mkDerivation {
  pname = "calico";
  version = "3.14";
  builder = ./builder.sh;
  src = builtins.fetchurl
    "https://github.com/projectcalico/cni-plugin/releases/download/v3.14.0/calico-amd64";
}
