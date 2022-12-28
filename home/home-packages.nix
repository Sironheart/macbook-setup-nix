{ pkgs, inputs, system, ... }: {
  home.packages = with pkgs; [
    _1password
    _1password-gui
    brave
    colima
    discord
    htop
    iterm2
    jetbrains.idea-ultimate
    jetbrains-mono
    jq
    kotlin
    kubectl
    kubernetes-helm
    spotify
    temurin-bin
    terraform
  ];
}
