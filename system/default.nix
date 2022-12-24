{ config, pkgs, ... }: {
	imports = [
		./network.nix
		./nix-configuration.nix
		./packages.nix
	];
}
