{
  description = "Custom khooj overlay flake";

  outputs = { self }: {
	overlay = final: prev: {
		custom = import ./default.nix final prev;
	};
  };
}
