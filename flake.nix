{
  description = "";
  inputs = {
    nixpkgs.url = "flake:nixpkgs/nixpkgs-unstable";
    nix.url = "flake:nix";
  };
  outputs = inputs:
    let
      flakeContext = {
        inherit inputs;
      };
    in
    {
      devShells = {
        x86_64-linux = {
          default = import ./devShells/default.nix flakeContext { system = "x86_64-linux"; };
        };
      };
    };
}
