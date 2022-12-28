{ pkgs, config, flake, ... }: {
	home.packages = [ pkgs.git-lfs ];

	programs.git = {
    package = pkgs.gitAndTools.gitFull;
    enable = true;
    userName = flake.config.people.users.${config.home.username}.name;
    userEmail = flake.config.people.users.${config.home.username}.email;
    ignores = [".DS_Store" "**/.idea" "**/.vscode" "**/.terraform" ];
    extraConfig = {
			init.defaultBranch = "main"; # based.
			core.editor = "vim";
			#protocol.keybase.allow = "always";
			credential.helper = "store --file ~/.git-credentials";
			pull.rebase = "true";
			# For supercede
			core.symlinks = true;
		};
	};
}
