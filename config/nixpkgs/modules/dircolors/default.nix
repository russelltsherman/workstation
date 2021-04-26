let

  pkgs = import <nixpkgs> {};

  # fetch an entire git repo
  LS_COLORS = pkgs.fetchgit  {
    url = "https://github.com/trapd00r/LS_COLORS";
    ref = "63dc14cdf5e3d85407584b4edaf20efe661c5264";
    sha256 = "0000000000000000000000000000000000000000000000000000";
  };

  # fetch a single file from a url
  # LS_COLORS = pkgs.fetchurl {
  #   url = "https://raw.githubusercontent.com/trapd00r/LS_COLORS/master/LS_COLORS";
  #   sha256  = "0000000000000000000000000000000000000000000000000000";
  # };

in

  pkgs.runCommand "ls-colors" {} ''
    mkdir -p $out/bin $out/share
    ln -s $(pkgs.coreutils)/bin/ls $out/bin/ls
    ln -s $(pkgs.coreutils)/bin/dircolors $out/bin/dircolors
    # cp $(LS_COLORS) $out/share/LS_COLORS
    cp $(LS_COLORS)/LS_COLORS $out/share/LS_COLORS
  ''
