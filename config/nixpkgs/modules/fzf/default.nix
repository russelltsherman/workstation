{ pkgs, ... }:

{

  programs.fzf = {
    enable = true;
    enableBashIntegration = true;
    enableFishIntegration = true;
    enableZshIntegration = true;
    package = pkgs.fzf;
    changeDirWidgetCommand = null;
    changeDirWidgetOptions = [];
    defaultCommand = null;
    defaultOptions = [];
    fileWidgetCommand = null;
    fileWidgetOptions = [];
    historyWidgetOptions = [];
  };

}
