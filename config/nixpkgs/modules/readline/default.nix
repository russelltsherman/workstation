{ pkgs, ... }:

{

  programs.readline = {
    enable = true;
    bindings = {
      # "\\C-h" = "backward-kill-word";
    };
    extraConfig = ''
    '';
    includeSystemConfig = true;
    variables = {
      # expand-tilde = true;
    };
  };

}
