{ stdenv, lib }:
stdenv.mkDerivation {
  pname = "calicoctl";
  version = "3.16.2";
  builder = ./builder.sh;
  src = builtins.fetchurl {
    url =
      "https://github.com/projectcalico/calicoctl/releases/download/v3.16.2/calicoctl";
    sha256 = "sha256:02isqmpcp7xp6v69gxggacixs04slxlnq0lkarwwinnh9yd0a6w0";
  };
}
