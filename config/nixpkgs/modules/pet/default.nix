{ pkgs, ... }:

{

  programs.pet = {
    enable = true;
    # package = pkgs.fzf;
    settings = {};
    snippets = [
      # {
      #   command = '';
      #   description = '';
      #   output = '';
      #   tag = [];
      # }
    ];
  };

}
