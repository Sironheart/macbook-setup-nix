{ config, pkgs, ... }: {
  imports = [
    ./git.nix
    ./home-manager.nix
    ./home-packages.nix
  ];
}
