{ pkgs, ... }:

{

  programs.keychain = {
    enable = true;
    enableBashIntegration = false;
    enableFishIntegration = true;
    enableXsessionIntegration = true;
    enableZshIntegration = true;
    agents = [];
    extraFlags = [];
    inheritType = "any";
    keys = [];
  };

}
