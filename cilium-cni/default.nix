{ stdenv }:
stdenv.mkDerivation {
  pname = "cilium-cni";
  version = "v1.9-rc2";
  builder = ./builder.sh;
  src = ./cilium-cni;
}
