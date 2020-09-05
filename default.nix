self: super:
{
	python38 = super.python38.override {
		packageOverrides = self: super: {
			curlify = super.callPackage ./curlify {};
		};
	};
	nomad_0123 = super.callPackage ./nomad {};
}
