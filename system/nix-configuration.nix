{ config, pkgs, lib, inputs, system, flake, rosettaPkgs, ... }: {
	nix = {
		nixPath = [ "nixpkgs=${inputs.nixpkgs}" ]; # Enables use of `nix-shell -p ...` etc
		registry.nixpkgs.flake = inputs.nixpkgs; # Make `nix shell` etc use pinned nixpkgs
		extraOptions = ''
			extra-platforms = x86_64-darwin
			experimental-features = nix-command flakes repl-flake
		'';
	};

	nixpkgs.config.allowUnfree = true;
	nixpkgs.config.allowBroken = true;

	security.pam.enableSudoTouchIdAuth = true;

	services.nix-daemon.enable = true;

	system.stateVersion = 4;
}
