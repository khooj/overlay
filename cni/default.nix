{ stdenv }:
stdenv.mkDerivation {
  pname = "cni";
  version = "0.8.6";
  builder = ./builder.sh;
  src = builtins.fetchurl {
    url =
      "https://github.com/containernetworking/plugins/releases/download/v0.8.6/cni-plugins-linux-amd64-v0.8.6.tgz";
  };
}
