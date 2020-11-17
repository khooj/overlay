with import <nixpkgs> { overlays = import ../../overlays.nix; };
mkShell {
  name = "env";
  buildInputs = [
    ruby.devEnv
    jruby
    jruby-openssl_0_9_13
    git
    sqlite
    libpcap
    postgresql
    libxml2
    libxslt
    pkg-config
    bundix
    gnumake
  ];
}
