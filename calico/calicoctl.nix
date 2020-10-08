{ stdenv }:
stdenv.mkDerivation {
  pname = "calicoctl";
  version = "3.16.2";
  builder = ./builder.sh;
  src = builtins.fetchurl {
    url =
      "https://github.com/projectcalico/calicoctl/releases/download/v3.16.2/calicoctl";
  };
}
