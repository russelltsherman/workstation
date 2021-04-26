{ pkgs, ... }:

{

  programs.pet = {
    enable = true;
  };

}

# programs.pet.enable
# Whether to enable pet.

# Type: boolean

# Default: false

# Example: true

# Declared by:

# <home-manager/modules/programs/pet.nix>
# programs.pet.selectcmdPackage
# The package needed for the settings.selectcmd.

# Type: package

# Default: pkgs.fzf

# Declared by:

# <home-manager/modules/programs/pet.nix>
# programs.pet.settings
# Settings written to config.toml. See the pet documentation for details.

# Type: TOML value

# Default: { }

# Declared by:

# <home-manager/modules/programs/pet.nix>
# programs.pet.snippets
# The snippets.

# Type: list of submodules

# Default: [ ]

# Declared by:

# <home-manager/modules/programs/pet.nix>
# programs.pet.snippets.*.command
# The command.

# Type: string

# Default: ""

# Example: "git rev-list --count HEAD"

# Declared by:

# <home-manager/modules/programs/pet.nix>
# programs.pet.snippets.*.description
# Description of the snippet.

# Type: string

# Default: ""

# Example: "Count the number of commits in the current branch"

# Declared by:

# <home-manager/modules/programs/pet.nix>
# programs.pet.snippets.*.output
# Example output of the command.

# Type: string

# Default: ""

# Example: "473"

# Declared by:

# <home-manager/modules/programs/pet.nix>
# programs.pet.snippets.*.tag
# List of tags attached to the command.

# Type: list of strings

# Default: [ ]

# Example:

# ["git" "nixpkgs"]
# Declared by:

# <home-manager/modules/programs/pet.nix>
