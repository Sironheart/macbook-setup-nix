{ config, pkgs, lib, inputs, system, flake, rosettaPkgs, ... }: {
  programs.home-manager.enable = true;

  home.username = "steffen";
  home.homeDirectory = "/Users/steffen";

  home.stateVersion = "21.05";
}
