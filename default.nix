self: super:
{
	#python38 = super.python38.override {
		#packageOverrides = eself: esuper: {
			#curlify = esuper.callPackage ./curlify {};
		#};
	#};
	nomad_0123 = super.callPackage ./nomad {};
}
