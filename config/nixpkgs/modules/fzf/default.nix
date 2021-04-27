{ pkgs, ... }:

{

  programs.fzf = {
    enable = true;
    enableBashIntegration = false;
    enableFishIntegration = false;
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
