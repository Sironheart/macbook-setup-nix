{ pkgs, inputs, system, ... }: {
	home.packages = with pkgs; [
		_1password
		_1password-gui
		brave
		colima
		htop
		jetbrains.idea-ultimate
		jq
		kotlin
		kubectl
		kubernetes-helm
		temurin-bin
		terraform
	];
}
