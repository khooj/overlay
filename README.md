# overlay
custom nixos overlay

## Usage
This overlay designed to be used with `overlays.nix` file placed to `$HOME/.config/nixpkgs/overlays.nix`. This is how it looks like on my machine
```
let
  overlay1 = import ./my_overlay;
in
[ overlay1 ]
```
