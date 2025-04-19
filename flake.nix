{
  description = "My Server setup";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-24.11";
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    ...
  }:
  # let
  #   mkSystem = system: host: otherModules:
  #     host = nixpkgs.lib.nixosSystem rec {
  #       system = "${system}";
  #       specialArgs = {
  #         inherit inputs;
  #       };
  #       modules = [
  #         ./system/modules/gen/genModules.nix
  #         ./hosts/{host}/configuration.nix
  #       ];
  #       # ++ otherModules
  #     };
  # in
  {
    nixosConfigurations = {
      persephone = nixpkgs.lib.nixosSystem rec {
        system = "x86_64-linux";
        specialArgs = {
          inherit inputs;
        };
        modules = [
          ./system/modules/gen/genModules.nix
          # ./hosts/persephone/configuration.nix
        ];
      };
    };
  };
}
