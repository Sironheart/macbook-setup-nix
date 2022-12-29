{ config, pkgs, ... }: {
  programs.home-manager.enable = true;

  home.username = "steffen";
  #  home.homeDirectory = "/Users/steffen";

  home.stateVersion = "22.11";
}
