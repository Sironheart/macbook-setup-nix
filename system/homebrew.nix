{ pkgs, config, ... }: {
  homebrew = {
    enable = true;
    taps = [
      "homebrew/bundle"
      "homebrew/cask"
      "homebrew/cask-drivers"
      "homebrew/cask-fonts"
      "homebrew/core"
    ];
    brews = [
      "fluxcd/tap/flux"
    ];
    casks = [
      "1password"
      "alfred"
      "brave-browser"
      "discord"
      "font-jetbrains-mono-nerd-font"
      "iterm2"
      "jetbrains-toolbox"
      "whatsapp"
      "yubico-yubikey-manager"
    ];
    masApps = {
      Magnet = 441258766;
      "Remote Desk Control" = 1509037746;
      "The Unarchiver" = 425424353;
    };
  };
}
