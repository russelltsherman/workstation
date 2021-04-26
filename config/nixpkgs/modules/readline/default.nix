{ pkgs, ... }:

{

  programs.readline = {
    enable = true;
  };

}

# programs.readline.enable
# Whether to enable readline.

# Type: boolean

# Default: false

# Example: true

# Declared by:

# <home-manager/modules/programs/readline.nix>
# programs.readline.bindings
# Readline bindings.

# Type: attribute set of strings

# Default: { }

# Example:

# { "\\C-h" = "backward-kill-word"; }
# Declared by:

# <home-manager/modules/programs/readline.nix>
# programs.readline.extraConfig
# Configuration lines appended unchanged to the end of the ~/.inputrc file.

# Type: strings concatenated with "\n"

# Default: ""

# Declared by:

# <home-manager/modules/programs/readline.nix>
# programs.readline.includeSystemConfig
# Whether to include the system-wide configuration.

# Type: boolean

# Default: true

# Declared by:

# <home-manager/modules/programs/readline.nix>
# programs.readline.variables
# Readline customization variable assignments.

# Type: attribute set of string or signed integer or booleans

# Default: { }

# Example: { expand-tilde = true; }

# Declared by:

# <home-manager/modules/programs/readline.nix>
