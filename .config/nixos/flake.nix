{
  description = "My NixOS system";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    { self, nixpkgs, ... }@inputs:
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        modules = [
          ./configuration.nix
          {
            nixpkgs.hostPlatform = "x86_64-linux";
            _module.args = { inherit inputs; };
          }
        ];
      };
    };
}
