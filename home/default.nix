{ config, pkgs, home, ... }: {
  imports = [
    ./git.nix
    ./home-manager.nix
    ./home-packages.nix
    ./shell.nix
  ];
}
