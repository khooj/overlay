{ stdenv, lib }:
stdenv.mkDerivation {
  pname = "cni";
  version = "0.8.6";
  builder = ./builder.sh;
  src = builtins.fetchurl {
    url =
      "https://github.com/containernetworking/plugins/releases/download/v0.8.6/cni-plugins-linux-amd64-v0.8.6.tgz";
    sha256 = "sha256:1xdjv4pw2mi591c7dr578wklwprnpfwyvn28gslczv9fpg6vykwr";
  };
}
