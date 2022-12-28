{ config, pkgs, ... }: {
  imports = [
    ./network.nix
    ./homebrew.nix
    ./nix-configuration.nix
    ./packages.nix
    ./macos-config.nix
    ./shell.nix
  ];
}
