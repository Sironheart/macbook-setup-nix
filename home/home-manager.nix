{ config, pkgs, ... }: {
  programs.home-manager.enable = true;

  home = {
    username = "steffen";
    #    homeDirectory = /Users/steffen;
    stateVersion = "23.05";
  };
}
