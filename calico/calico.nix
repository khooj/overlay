{ fetchurl, lib, stdenv }:
stdenv.mkDerivation {
  pname = "calico";
  version = "3.14";
  builder = ./builder.sh;
  src = builtins.fetchurl {
    url = "https://github.com/projectcalico/cni-plugin/releases/download/v3.14.0/calico-amd64";
    sha256 = "sha256:12cihnrq3q2csyncdrs1i9c07bri1w6ilmmvk0kagd1gfja3laj1";
  };
}
