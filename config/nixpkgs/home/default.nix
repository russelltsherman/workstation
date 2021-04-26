{ config, pkgs, lib, ... }:

let

  imports = [ ../modules ];

  goPkgs = with pkgs; [
    go-outline
    go-symbols
    goa
    gocode
    gocode-gomod
    gocyclo
    godef
    goimports
    golangci-lint
    golint
    gomodifytags
    gopkgs
    gopls
    gox
  ];

  pyPkgs = with pkgs; [
    python37
    python37Packages.python-language-server
    python37Packages.virtualenv
  ];

in

{
  inherit imports;

  # environment.pathsToLink = [ "/share/zsh" ];

  home = {
    homeDirectory = builtins.getEnv "HOME";
    packages = with pkgs; [
      _1password
      ack
      awscli2
      awslogs
      bat
      coreutils
      findutils
      fontconfig
      fzf
      graphviz
      gawk
      git-crypt
      gnugrep
      gnumake
      gnused
      gnupg
      helmfile
      hugo
      kubectl
      kubectx
      kustomize
      kubernetes-helm
      kubetail
      lazydocker
      lazygit
      minikube
      nodejs
      oathToolkit
      pinentry_mac
      pv
      readline
      rsync
      screen
      tasksh
      tldr
      tree
      watchman
      wget
      which
      yarn
      yq
    ] ++ goPkgs ++ pyPkgs ;
    stateVersion = "20.09";
    username = builtins.getEnv "USER";
  };

  manual = {
    html.enable = true;
    json.enable = true;
    manpages.enable = true;
  };

  nixpkgs.config.allowUnfree = true;

  programs.home-manager = {
    enable = true;
    path = "~/.config/nixpkgs/home.nix";
  };
  programs.man.enable = true;
}
