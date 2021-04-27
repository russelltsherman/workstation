{ pkgs, ... }:

{

  programs.pazi = {
    enable = true;
    enableBashIntegration = false;
    enableFishIntegration = false;
    enableZshIntegration = true;
  };

}
