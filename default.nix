self: super:
{
	python38 = super.python38.override {
		packageOverrides = eself: esuper: {
			curlify = esuper.callPackage ./curlify {};
		};
	};
	nomad_0123 = super.callPackage ./nomad {};
	nomad_0125 = super.callPackage ./nomad/0125.nix {};
	nixops_plugins = import ./nixops;
	calico = super.callPackage ./calico/calico.nix {};
	calico-ipam = super.callPackage ./calico/calico-ipam.nix {};
}
