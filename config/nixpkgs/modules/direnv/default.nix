{ pkgs, ... }:

{
  programs.direnv = {
    enable = true;
    enableBashIntegration = true;
    enableFishIntegration = true;
    enableNixDirenvIntegration = true;
    enableZshIntegration = true;
    # config
    # stdlib
  };

}


