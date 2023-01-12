{ pkgs, lib, ... }:

let
  inherit (lib) elem optionalString;
in
{
  programs.fish = {
    enable = true;
    loginShellInit = ''
      if test -d (brew --prefix)"/share/fish/completions"
          set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/completions
      end

      if test -d (brew --prefix)"/share/fish/vendor_completions.d"
          set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
      end
    '';
    plugins = [
      {
        name = "fish-spec";
        src = pkgs.fetchFromGitHub {
          owner = "oh-my-fish";
          repo = "fish-spec";
          rev = "dddd9213272a0ab848d474d0cbde12ad034e65bc";
          sha256 = "00xqlyl3lffc5l0viin1nyp819wf81fncqyz87jx8ljjdhilmgbs";
        };
      }
      {
        name = "plugin-brew";
        src = pkgs.fetchFromGitHub {
          owner = "oh-my-fish";
          repo = "plugin-brew";
          rev = "0021f7a2491df3c88e11786df366dc2030f939bb";
          sha256 = "sha256-jBbm0wTNZ7jSoGFxRkTz96QHpc5ViAw9RGsRBkCQEIU";
        };
      }
      {
        name = "bobthefish";
        src = pkgs.fetchFromGitHub {
          owner = "oh-my-fish";
          repo = "theme-bobthefish";
          rev = "2dcfcab653ae69ae95ab57217fe64c97ae05d8de";
          sha256 = "sha256-jBbm0wTNZ7jSoGFxRkTz96QHpc5ViAw9RGsRBkCQEIU";
        };
      }
    ];
  };
}
