{ pkgs, ... }:

{

  programs.vscode = {
    enable = true;
  };

}

# programs.vscode.enable
# Whether to enable Visual Studio Code.

# Type: boolean

# Default: false

# Example: true

# Declared by:

# <home-manager/modules/programs/vscode.nix>
# programs.vscode.package
# Version of Visual Studio Code to install.

# Type: package

# Default: (build of vscode-1.55.2)

# Example:

# pkgs.vscodium
# Declared by:

# <home-manager/modules/programs/vscode.nix>
# programs.vscode.extensions
# The extensions Visual Studio Code should be started with. These will override but not delete manually installed ones.

# Type: list of packages

# Default: [ ]

# Example:

# [ pkgs.vscode-extensions.bbenoist.Nix ]
# Declared by:

# <home-manager/modules/programs/vscode.nix>
# programs.vscode.haskell.enable
# Whether to enable Haskell integration for Visual Studio Code.

# Type: boolean

# Default: false

# Example: true

# Declared by:

# <home-manager/modules/programs/vscode/haskell.nix>
# programs.vscode.haskell.hie.enable
# Whether to enable Haskell IDE engine integration.

# Type: boolean

# Default: true

# Declared by:

# <home-manager/modules/programs/vscode/haskell.nix>
# programs.vscode.haskell.hie.executablePath
# The path to the Haskell IDE Engine executable.

# Because hie-nix is not packaged in Nixpkgs, you need to add it as an overlay or set this option. Example overlay configuration:

# nixpkgs.overlays = [
#   (self: super: { hie-nix = import ~/src/hie-nix {}; })
# ]
# Type: path

# Default: "${pkgs.hie-nix.hies}/bin/hie-wrapper"

# Example:

# (import ~/src/haskell-ide-engine {}).hies + "/bin/hie-wrapper";
# Declared by:

# <home-manager/modules/programs/vscode/haskell.nix>
# programs.vscode.keybindings
# Keybindings written to Visual Studio Code's keybindings.json.

# Type: list of submodules

# Default: [ ]

# Example:

# [
#   {
#     key = "ctrl+c";
#     command = "editor.action.clipboardCopyAction";
#     when = "textInputFocus";
#   }
# ]
# Declared by:

# <home-manager/modules/programs/vscode.nix>
# programs.vscode.keybindings.*.args
# Optional arguments for a command.

# Type: null or attribute set

# Default: null

# Example: { direction = "up"; }

# Declared by:

# <home-manager/modules/programs/vscode.nix>
# programs.vscode.keybindings.*.command
# The VS Code command to execute.

# Type: string

# Example: "editor.action.clipboardCopyAction"

# Declared by:

# <home-manager/modules/programs/vscode.nix>
# programs.vscode.keybindings.*.key
# The key or key-combination to bind.

# Type: string

# Example: "ctrl+c"

# Declared by:

# <home-manager/modules/programs/vscode.nix>
# programs.vscode.keybindings.*.when
# Optional context filter.

# Type: null or string

# Default: null

# Example: "textInputFocus"

# Declared by:

# <home-manager/modules/programs/vscode.nix>
# programs.vscode.userSettings
# Configuration written to Visual Studio Code's settings.json.

# Type: JSON value

# Default: { }

# Example:

# {
#   "update.channel" = "none";
#   "[nix]"."editor.tabSize" = 2;
# }
# Declared by:

# <home-manager/modules/programs/vscode.nix>
