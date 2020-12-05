{
  description = "Custom khooj overlay flake";

  outputs = { self }: {
    overlay = final: prev: import ./default.nix final prev;
  };
}
