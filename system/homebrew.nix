{ pkgs, config, ... }: {
  homebrew = {
    enable = true;
    casks = [
      "1password"
      "alfred"
      "brave-browser"
      "iterm2"
      "jetbrains-toolbox"
      "whatsapp"
    ];
    masApps = {
      Magnet = 441258766;
      "Remote Desk Control" = 1509037746;
      "The Unarchiver" = 425424353;
    };
  };
}
