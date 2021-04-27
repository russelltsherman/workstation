{ pkgs, ... }:

{
  programs.direnv = {
    enable = true;
    enableBashIntegration = false;
    enableFishIntegration = false;
    enableNixDirenvIntegration = true;
    enableZshIntegration = true;
    config = {}; # Configuration written to ~/.config/direnv/config.toml.
    stdlib = ''
    ''; # Custom stdlib written to ~/.config/direnv/direnvrc.
  };

}


