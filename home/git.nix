{ pkgs, config, flake, ... }: {
  home.packages = [ pkgs.git-lfs ];

  programs.git = {
    package = pkgs.gitAndTools.gitFull;
    enable = true;
    userName = "Steffen";
    userEmail = "steffen.beisenherz@gmail.com";
    ignores = [ ".DS_Store" "**/.idea" "**/.vscode" "**/.terraform" ];
    extraConfig = {
      init.defaultBranch = "main"; # based.
      core.editor = "vim";
      credential.helper = "store --file ~/.git-credentials";
      pull.rebase = "true";
      # For supercede
      core.symlinks = true;
    };
  };
}
