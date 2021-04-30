{ pkgs, ... }:

{

  programs.pazi = {
    enable = true;
    enableBashIntegration = false;
    enableFishIntegration = true;
    enableZshIntegration = true;
  };

}
