{ pkgs, inputs, system, ... }: {
  home.packages = with pkgs; [
    _1password
    colima
    discord
    htop
    jetbrains-mono
    jq
    kotlin
    kubectl
    kubernetes-helm
    temurin-bin
    terraform
  ];
}
