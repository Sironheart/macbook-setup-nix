{ pkgs, config, flake, ... }: {

  programs.fish = {
    enable = true;
#    plugins = [
#      {
#        name = "foreign-env";
#        src = pkgs.fetchFromGitHub {
#          owner = "oh-my-fish";
#          repo = "plugin-foreign-env";
#          rev = "dddd9213272a0ab848d474d0cbde12ad034e65bc";
#          sha256 = "00xqlyl3lffc5l0viin1nyp819wf81fncqyz87jx8ljjdhilmgbs";
#        };
#      }
#      {
#        name = "fish-spec";
#        src = pkgs.fetchFromGitHub {
#          owner = "oh-my-fish";
#          repo = "fish-spec";
#          rev = "dddd9213272a0ab848d474d0cbde12ad034e65bc";
#          sha256 = "00xqlyl3lffc5l0viin1nyp819wf81fncqyz87jx8ljjdhilmgbs";
#       };
#      }
#      {
#        name = "bobthefish";
#        src = pkgs.fetchFromGitHub {
#          owner = "oh-my-fish";
#          repo = "theme-bobthefish";
#          rev = "a2ad38aa051aaed25ae3bd6129986e7f27d42d7b";
#          sha256 = "1fssb5bqd2d7856gsylf93d28n3rw4rlqkhbg120j5ng27c7v7lq";
#        };
#      }
#    ];
  };
}
