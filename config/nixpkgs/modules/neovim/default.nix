{ pkgs, ... }:

{

  programs.neovim = {
    enable = true;
  };

}

# programs.neovim.enable
# Whether to enable Neovim.

# Type: boolean

# Default: false

# Example: true

# Declared by:

# <home-manager/modules/programs/neovim.nix>
# programs.neovim.package
# The package to use for the neovim binary.

# Type: package

# Default: pkgs.neovim-unwrapped

# Declared by:

# <home-manager/modules/programs/neovim.nix>
# programs.neovim.configure
# Deprecated. Please use the other options. Generate your init file from your list of plugins and custom commands, and loads it from the store via nvim -u /nix/store/hash-vimrc

# This option is mutually exclusive with extraConfig and plugins.

# Type: attribute set of anythings

# Default: { }

# Example:

# configure = {
#     customRC = $'''
#     " here your custom configuration goes!
#     $''';
#     packages.myVimPackage = with pkgs.vimPlugins; {
#       # loaded on launch
#       start = [ fugitive ];
#       # manually loadable by calling `:packadd $plugin-name`
#       opt = [ ];
#     };
#   };
# Declared by:

# <home-manager/modules/programs/neovim.nix>
# programs.neovim.extraConfig
# Custom vimrc lines.

# This option is mutually exclusive with configure.

# Type: strings concatenated with "\n"

# Default: ""

# Example:

# ''
# set nocompatible
# set nobackup
# ''
# Declared by:

# <home-manager/modules/programs/neovim.nix>
# programs.neovim.extraPackages
# Extra packages available to nvim.

# Type: list of packages

# Default: [ ]

# Example: "[ pkgs.shfmt ]"

# Declared by:

# <home-manager/modules/programs/neovim.nix>
# programs.neovim.extraPython3Packages
# A function in python.withPackages format, which returns a list of Python 3 packages required for your plugins to work.

# Type: python3 packages in python.withPackages format or list of packages

# Default: "ps: []"

# Example:

# (ps: with ps; [ python-language-server ])
# Declared by:

# <home-manager/modules/programs/neovim.nix>
# programs.neovim.extraPythonPackages
# A function in python.withPackages format, which returns a list of Python 2 packages required for your plugins to work.

# Type: python packages in python.withPackages format or list of packages

# Default: "ps: []"

# Example:

# (ps: with ps; [ pandas jedi ])
# Declared by:

# <home-manager/modules/programs/neovim.nix>
# programs.neovim.plugins
# List of vim plugins to install optionally associated with configuration to be placed in init.vim.

# This option is mutually exclusive with configure.

# Type: list of package or submodules

# Default: [ ]

# Example:

# with pkgs.vimPlugins; [
#   yankring
#   vim-nix
#   { plugin = vim-startify;
#     config = "let g:startify_change_to_vcs_root = 0";
#   }
# ]
# Declared by:

# <home-manager/modules/programs/neovim.nix>
# programs.neovim.viAlias
# Symlink vi to nvim binary.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/neovim.nix>
# programs.neovim.vimAlias
# Symlink vim to nvim binary.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/neovim.nix>
# programs.neovim.vimdiffAlias
# Alias vimdiff to nvim -d.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/neovim.nix>
# programs.neovim.withNodeJs
# Enable node provider. Set to true to use Node plugins.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/neovim.nix>
# programs.neovim.withPython
# Enable Python 2 provider. Set to true to use Python 2 plugins.

# Type: boolean

# Default: true

# Declared by:

# <home-manager/modules/programs/neovim.nix>
# programs.neovim.withPython3
# Enable Python 3 provider. Set to true to use Python 3 plugins.

# Type: boolean

# Default: true

# Declared by:

# <home-manager/modules/programs/neovim.nix>
# programs.neovim.withRuby
# Enable ruby provider.

# Type: null or boolean

# Default: true

# Declared by:

# <home-manager/modules/programs/neovim.nix>
