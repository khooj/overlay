{ stdenv }:
stdenv.mkDerivation {
  pname = "cilium";
  version = "v1.9";
  builder = ./builder.sh;
  src = ./cilium;
}
