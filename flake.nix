{
  description = "private macbook usage";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    darwin.url = "github:hercules-ci/nix-darwin/add-hercules-ci-agent";
    darwin.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, home-manager, nixpkgs, darwin, ... }: {
    inputs.flake-parts.lib.mkFlake { inherit (inputs) self; } {
      systems = [ "x86_64-darwin" ];
      imports = [
        ./config
        ./home
      ];

      flake = {
      	darwinConfigurations = {
					default = self.lib.mkMacosSystem {
						imports = [
							self.darwinModules.default
						]
					};
      	};
      };
    };
  };

	perSystem = { pkgs, config, inputs', ... }: {
		devShells.default = pkgs.mkShell {
			buildInputs = [
				pkgs.nixpkgs-fmt
				inputs'.agenix.packages.agenix
			];
		};
		formatter = pkgs.nixpkgs-fmt;
		apps.default = config.apps.activate;
	};
}
