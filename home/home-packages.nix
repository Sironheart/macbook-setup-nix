{ pkgs, inputs, system, ... }: {
  home.packages = with pkgs; [
    _1password
    colima
    htop
    jq
    k9s
    kotlin
    kubectl
    kubernetes-helm
    temurin-bin
    terraform
  ];
}
