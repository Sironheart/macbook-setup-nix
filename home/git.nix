{ pkgs, config, flake, ... }: {
  home.packages = [ pkgs.git-lfs ];

  programs.git = {
    package = pkgs.gitAndTools.gitFull;
    enable = true;

    delta.enable = true;

    userName = "Steffen";
    userEmail = "steffen.beisenherz@gmail.com";
    extraConfig = {
      init.defaultBranch = "main"; # based.
      core.editor = "vim";
      credential.helper = "store --file ~/.git-credentials";
      pull.rebase = "true";
      push.default = "current";
      # For supercede
      core.symlinks = true;

      url = {
        "git@github.com:" = {
          insteadOf = "https://github.com/";
        };
      };
    };

    ignores = [
      ".DS_Store"
      ".AppleDouble"
      ".LSOverride"

      "._*"

      ".DocumentRevisions-V100"
      ".fseventsd"
      ".Spotlight-V100"
      ".TemporaryItems"
      ".Trashes"
      ".VolumeIcon.icns"
      ".com.apple.timemachine.donotpresent"
      ".AppleDB"
      ".AppleDesktop"
      "Network Trash Folder"
      "Temporary Items"
      ".apdisk"

      ".idea"
      "**/.vscode"
      "**/.terraform"
    ];
  };
}
