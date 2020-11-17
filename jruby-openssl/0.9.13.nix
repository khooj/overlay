{ stdenv, fetchgit, jdk, maven, jruby, javaPackages, lib, git }:

let
  version = "0.9.13";

  src = fetchgit {
    url = "https://github.com/jruby/jruby-openssl";
    rev = "refs/tags/v${version}";
    sha256 = "sha256-CSDEFSEvGV6VWw7BqqWwc5zzry588r4ljPfEYWMOZCg=";
  };

  # perform fake build to make a fixed-output derivation out of the files downloaded from maven central (120MB)
  deps = stdenv.mkDerivation {
    name = "jruby-openssl-${version}-deps";
    inherit src;
    buildInputs = [ jdk maven jruby git ];
    buildPhase = ''
      while mvn package -Dmaven.repo.local=$out/.m2 -Dmaven.wagon.rto=5000 -DskipTests -e; [ $? = 1 ]; do
        echo "timeout, restart maven to continue downloading"
      done
    '';
    # keep only *.{pom,jar,sha1,nbm} and delete all ephemeral files with lastModified timestamps inside
    installPhase =
      "find $out/.m2 -type f -regex '.+\\(\\.lastUpdated\\|resolver-status\\.properties\\|_remote\\.repositories\\)' -delete";
    outputHashAlgo = "sha256";
    outputHashMode = "recursive";
    outputHash = "sha256-lo2H2qkLr0ZOgSy07e52xKZLpzfyeFAeOiOj9sgxe28=";
  };
in stdenv.mkDerivation rec {
  name = "jruby-openssl-${version}";

  inherit src;

  buildInputs = [ jdk maven jruby git ];

  buildPhase = ''
    # 'maven.repo.local' must be writable so copy it out of nix store
    mvn package --offline -Dmaven.repo.local=$(cp -dpR ${deps}/.m2 ./ && chmod +w -R .m2 && pwd)/.m2 -DskipTests
  '';

  installPhase = ''
    mkdir -p $out
    cp -r pkg/jruby-openssl-${version}.gem $out/
    mkdir -pv $out/${passthru.gemPath}
    mkdir -p $out/nix-support
    cat > $out/nix-support/setup-hook <<EOF
    addGemPath() {
        addToSearchPath GEM_PATH \$1/${passthru.gemPath}
    }
    addEnvHooks "$hostOffset" addGemPath
    EOF
  '';

  passthru = rec {
    rubyEngine = "jruby";
    gemPath = "lib/${rubyEngine}/gems/${jruby.libPath}";
    libPath = "lib/${rubyEngine}/${jruby.libPath}";
  };
}
