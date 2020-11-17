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
	calicoctl = super.callPackage ./calico/calicoctl.nix {};
	cni = super.callPackage ./cni {};
	fluentd-custom = super.callPackage ./fluentd-custom {};
	cilium = super.callPackage ./cilium {};
	cilium-cni = super.callPackage ./cilium-cni {};
	jruby-openssl = super.callPackage ./jruby-openssl {};
	jruby-openssl_0_9_13 = super.callPackage ./jruby-openssl/0.9.13.nix {};
	aws-es-proxy = super.callPackage ./aws-es-proxy {};
}
