{ pkgs, ... }:

{

  programs.go = {
    enable = true;
    packages = {};
    extraGoPaths = [];
    goBin = null;
    goPath = null;
    goPrivate = [];
  };

}
