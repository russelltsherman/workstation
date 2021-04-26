{ pkgs, ... }:

{

  programs.tmux = {
    enable = true;
  };

}

# programs.tmux.enable
# Whether to enable tmux.

# Type: boolean

# Default: false

# Example: true

# Declared by:

# <home-manager/modules/programs/tmux.nix>
# programs.tmux.package
# The tmux package to install

# Type: package

# Default: pkgs.tmux

# Example:

# pkgs.tmux
# Declared by:

# <home-manager/modules/programs/tmux.nix>
# programs.tmux.aggressiveResize
# Resize the window to the size of the smallest session for which it is the current window.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/tmux.nix>
# programs.tmux.baseIndex
# Base index for windows and panes.

# Type: unsigned integer, meaning >=0

# Default: 0

# Example: 1

# Declared by:

# <home-manager/modules/programs/tmux.nix>
# programs.tmux.clock24
# Use 24 hour clock.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/tmux.nix>
# programs.tmux.customPaneNavigationAndResize
# Override the hjkl and HJKL bindings for pane navigation and resizing in VI mode.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/tmux.nix>
# programs.tmux.disableConfirmationPrompt
# Disable confirmation prompt before killing a pane or window

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/tmux.nix>
# programs.tmux.escapeTime
# Time in milliseconds for which tmux waits after an escape is input.

# Type: unsigned integer, meaning >=0

# Default: 500

# Example: 0

# Declared by:

# <home-manager/modules/programs/tmux.nix>
# programs.tmux.extraConfig
# Additional configuration to add to tmux.conf.

# Type: strings concatenated with "\n"

# Default: ""

# Declared by:

# <home-manager/modules/programs/tmux.nix>
# programs.tmux.historyLimit
# Maximum number of lines held in window history.

# Type: positive integer, meaning >0

# Default: 2000

# Example: 5000

# Declared by:

# <home-manager/modules/programs/tmux.nix>
# programs.tmux.keyMode
# VI or Emacs style shortcuts.

# Type: one of "emacs", "vi"

# Default: "emacs"

# Example: "vi"

# Declared by:

# <home-manager/modules/programs/tmux.nix>
# programs.tmux.newSession
# Automatically spawn a session if trying to attach and none are running.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/tmux.nix>
# programs.tmux.plugins
# List of tmux plugins to be included at the end of your tmux configuration. The sensible plugin, however, is defaulted to run at the top of your configuration.

# Type: list of plugin packages or submodules

# Default: [ ]

# Example:

# with pkgs; [
#   tmuxPlugins.cpu
#   {
#     plugin = tmuxPlugins.resurrect;
#     extraConfig = "set -g @resurrect-strategy-nvim 'session'";
#   }
#   {
#     plugin = tmuxPlugins.continuum;
#     extraConfig = ''
#       set -g @continuum-restore 'on'
#       set -g @continuum-save-interval '60' # minutes
#     '';
#   }
# ]
# Declared by:

# <home-manager/modules/programs/tmux.nix>
# programs.tmux.prefix
# Set the prefix key. Overrules the "shortcut" option when set.

# Type: null or string

# Default: null

# Example: "C-a"

# Declared by:

# <home-manager/modules/programs/tmux.nix>
# programs.tmux.resizeAmount
# Number of lines/columns when resizing.

# Type: positive integer, meaning >0

# Default: 5

# Example: 10

# Declared by:

# <home-manager/modules/programs/tmux.nix>
# programs.tmux.reverseSplit
# Reverse the window split shortcuts.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/tmux.nix>
# programs.tmux.secureSocket
# Store tmux socket under /run, which is more secure than /tmp, but as a downside it doesn't survive user logout.

# Type: boolean

# Default: true

# Declared by:

# <home-manager/modules/programs/tmux.nix>
# programs.tmux.sensibleOnTop
# Run the sensible plugin at the top of the configuration. It is possible to override the sensible settings using the programs.tmux.extraConfig option.

# Type: boolean

# Default: true

# Declared by:

# <home-manager/modules/programs/tmux.nix>
# programs.tmux.shell
# Set the default-shell tmux variable.

# Type: null or string

# Default: null

# Example: "\${pkgs.zsh}/bin/zsh"

# Declared by:

# <home-manager/modules/programs/tmux.nix>
# programs.tmux.shortcut
# CTRL following by this key is used as the main shortcut.

# Type: string

# Default: "b"

# Example: "a"

# Declared by:

# <home-manager/modules/programs/tmux.nix>
# programs.tmux.terminal
# Set the $TERM variable.

# Type: string

# Default: "screen"

# Example: "screen-256color"

# Declared by:

# <home-manager/modules/programs/tmux.nix>
# programs.tmux.tmuxinator.enable
# Whether to enable tmuxinator.

# Type: boolean

# Default: false

# Example: true

# Declared by:

# <home-manager/modules/programs/tmux.nix>
# programs.tmux.tmuxp.enable
# Whether to enable tmuxp.

# Type: boolean

# Default: false

# Example: true

# Declared by:

# <home-manager/modules/programs/tmux.nix>
