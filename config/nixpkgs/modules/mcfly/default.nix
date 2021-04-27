{ pkgs, ... }:

{

  programs.mcfly = {
    enable = true;
    enableBashIntegration = false;
    enableFishIntegration = false;
    enableFuzzySearch = true;
    enableLightTheme = false;
    enableZshIntegration = true;
    keyScheme = "vim";
  };

}
