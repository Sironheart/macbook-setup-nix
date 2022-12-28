{
  description = "private macbook usage";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    darwin.url = "github:hercules-ci/nix-darwin/add-hercules-ci-agent";
    darwin.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
#    gitignore.url = "github:hercules-ci/gitignore.nix";
  };

  outputs = inputs@{ self, home-manager, nixpkgs, darwin, /*gitignore,*/ ... }:
    let
      supportedSystems = [ "x86_64-darwin" "aarch64-darwin" ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
#      inherit (gitignore.lib) gitignoreSource;
    in
    {
      darwinConfigurations = {
        private-macbook = darwin.lib.darwinSystem {
          system = "x86_64-darwin";
          modules = [
            ./system
            home-manager.darwinModules.default
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.steffen = import ./home;
            }
          ];
        };
      };

      formatter = forAllSystems (
        system:
        nixpkgs.legacyPackages.${system}.nixpkgs-fmt
      );
    };
}
