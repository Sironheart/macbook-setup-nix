{ pkgs, inputs, system, ... }: {
  home.packages = with pkgs; [
    _1password
    colima
    htop
    jq
    kotlin
    kubectl
    kubernetes-helm
    temurin-bin
    terraform
  ];
}
