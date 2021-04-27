{ pkgs, ... }:

{

  programs.keychain = {
    enable = true;
    enableBashIntegration = false;
    enableFishIntegration = false;
    enableXsessionIntegration = true;
    enableZshIntegration = true;
    agents = [];
    extraFlags = [];
    inheritType = "any";
    keys = [];
  };

}
