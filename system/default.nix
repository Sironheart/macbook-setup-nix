{ config, pkgs, ... }: {
  imports = [
    ./network.nix
    ./nix-configuration.nix
    ./packages.nix
    ./macos-config.nix
  ];
}
