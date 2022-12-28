{ config, pkgs, ... }: {
  imports = [
    ./git.nix
    ./home-manager.nix
    ./home-packages.nix
    ./homebrew.nix
    ./shell.nix
  ];
}
