{ pkgs, config, ... }: {
  homebrew = {
    enable = true;
    casks = [
      "alfred"
      "whatsapp"
    ];
    masApps = {
      Magnet = 441258766;
      "Remote Desk Control" = 1509037746;
      "The Unarchiver" = 425424353;
      XCode = 497799835;
    };
  };
}
