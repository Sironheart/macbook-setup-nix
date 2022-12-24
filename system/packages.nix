{ config, pkgs, lib, system, flake, rosettaPkgs }: {
	environment.systemPackages = with pkgs; [
		nixpkgs-fmt
		vim
	];
}
