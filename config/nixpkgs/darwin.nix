{ config, pkgs, ... }:

let
  callPackage = pkgs.callPackage;

  # arduino = callPackage /b/src/apps/arduino.nix { };
  # shell-prompt = callPackage /b/src/shell-prompt { };
  # burkeutils = callPackage /b/src/burkeutils { };
  # hammerspoon = callPackage /b/src/apps/hammerspoon.nix { };
  # # kaleidoscope-relay = callPackage /b/src/kaleidoscope-relay { };
  # minidev = callPackage /b/src/minidev { };
  # gcoreutils = callPackage /b/src/gcoreutils { };
  # b = callPackage /b/src/b { };
  # ndoc = callPackage /b/src/ndoc { };

in {
  # imports = [ ./nix-darwin-home-manager.nix ./home.nix ];
  # home-manager.useUserPackages = true;

  # users.users.russellsherman = {
  #   home = "/Users/russellsherman";
  #   description = "russell sherman";
  #   shell = pkgs.zsh;
  # };

  environment = {
    darwinConfig = "/b/etc/nix/darwin.nix";
    shells = [ pkgs.zsh ];
    systemPackages = with pkgs; [
      b
      # acme-sh
      arduino
      burkeutils
      discount
      fd
      fzf
      gcoreutils
      minidev
      fontconfig # to make doom doctor work
      git
      ctags
      google-cloud-sdk
      hammerspoon
      ndoc
      htop
      jq
      # kaleidoscope-relay
      nixfmt
      pinentry_mac
      # ripgrep
      ruby_2_6
      shadowenv
      shell-prompt
      shellcheck
      tree
      zsh
    ];
  }

  programs.nix-index.enable = true;

  # system.defaults.NSGlobalDomain.AppleKeyboardUIMode = 3;
  # system.defaults.NSGlobalDomain.ApplePressAndHoldEnabled = false;
  # # system.defaults.NSGlobalDomain.InitialKeyRepeat = 10;
  # # system.defaults.NSGlobalDomain.KeyRepeat = 1;
  # system.defaults.NSGlobalDomain.NSAutomaticCapitalizationEnabled = false;
  # system.defaults.NSGlobalDomain.NSAutomaticDashSubstitutionEnabled = false;
  # system.defaults.NSGlobalDomain.NSAutomaticPeriodSubstitutionEnabled = false;
  # system.defaults.NSGlobalDomain.NSAutomaticQuoteSubstitutionEnabled = false;
  # system.defaults.NSGlobalDomain.NSAutomaticSpellingCorrectionEnabled = false;
  # system.defaults.NSGlobalDomain.NSNavPanelExpandedStateForSaveMode = true;
  # system.defaults.NSGlobalDomain.NSNavPanelExpandedStateForSaveMode2 = true;

  # system.defaults.dock.autohide = true;
  # system.defaults.dock.orientation = "right";
  # system.defaults.dock.showhidden = true;
  # system.defaults.dock.mru-spaces = false;

  # system.defaults.finder.AppleShowAllExtensions = true;
  # system.defaults.finder.QuitMenuItem = true;
  # system.defaults.finder.FXEnableExtensionChangeWarning = false;

  # system.defaults.trackpad.Clicking = false;
  # system.defaults.trackpad.TrackpadThreeFingerDrag = true;

  # system.keyboard.enableKeyMapping = true;
  # system.keyboard.remapCapsLockToControl = true;

  services.nix-daemon.enable = false;
  nix.useDaemon = false;
  programs.zsh.enable = true;
  system.stateVersion = 4;
  nix.maxJobs = 4;
  nix.buildCores = 4;
}
