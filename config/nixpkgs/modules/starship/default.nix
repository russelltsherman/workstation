{ pkgs, lib, ... }:

{

  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    enableFishIntegration = true;
    enableZshIntegration = true;
    package = pkgs.starship;
    settings = {
      add_newline = false;
      format = lib.concatStrings [
        "$line_break"
        "$package"
        "$line_break"
        "$character"
      ];
      scan_timeout = 10;
      character = {
        success_symbol = "➜";
        error_symbol = "➜";
      };
    };
  };

}
