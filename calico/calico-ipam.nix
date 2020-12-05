{ fetchurl, stdenv, lib }:
stdenv.mkDerivation {
  pname = "calico-ipam";
  version = "3.14";
  builder = ./builder.sh;
  src = builtins.fetchurl {
    url = "https://github.com/projectcalico/cni-plugin/releases/download/v3.14.0/calico-ipam-amd64";
    sha256 = lib.fakeSha256;
  };
}
