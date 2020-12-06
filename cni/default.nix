{ buildGoPackage, fetchFromGitHub, lib }:
buildGoPackage rec {
  pname = "cni";
  version = "0.8.0";
  goPackagePath = "github.com/containernetworking/cni";
  src = fetchFromGitHub {
    owner = "containernetworking";
    repo = "cni";
    rev = "v${version}";
    sha256 = "sha256-PL4se4cGQ2mUWe5wujfpMidOtiezMTE0PuweHGFLJZo=";
  };

  meta = with lib; {
    platforms = [ "x86_64-linux" "aarch64-linux" ];
  };
}
