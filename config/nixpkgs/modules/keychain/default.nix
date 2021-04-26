{ pkgs, ... }:

{

  programs.keychain = {
    enable = true;
  };

}

# programs.keychain.enable
# Whether to enable keychain.

# Type: boolean

# Default: false

# Example: true

# Declared by:

# <home-manager/modules/programs/keychain.nix>
# programs.keychain.enableBashIntegration
# Whether to enable Bash integration.

# Type: boolean

# Default: true

# Declared by:

# <home-manager/modules/programs/keychain.nix>
# programs.keychain.enableFishIntegration
# Whether to enable Fish integration.

# Type: boolean

# Default: true

# Declared by:

# <home-manager/modules/programs/keychain.nix>
# programs.keychain.enableXsessionIntegration
# Whether to run keychain from your ~/.xsession.

# Type: boolean

# Default: true

# Declared by:

# <home-manager/modules/programs/keychain.nix>
# programs.keychain.enableZshIntegration
# Whether to enable Zsh integration.

# Type: boolean

# Default: true

# Declared by:

# <home-manager/modules/programs/keychain.nix>
# programs.keychain.package
# Keychain package to install.

# Type: package

# Default: pkgs.keychain

# Declared by:

# <home-manager/modules/programs/keychain.nix>
# programs.keychain.agents
# Agents to add.

# Type: list of strings

# Default: [ ]

# Declared by:

# <home-manager/modules/programs/keychain.nix>
# programs.keychain.extraFlags
# Extra flags to pass to keychain.

# Type: list of strings

# Default: [ "--quiet" ]

# Declared by:

# <home-manager/modules/programs/keychain.nix>
# programs.keychain.inheritType
# Inherit type to attempt from agent variables from the environment.

# Type: null or one of "local", "any", "local-once", "any-once"

# Default: null

# Declared by:

# <home-manager/modules/programs/keychain.nix>
# programs.keychain.keys
# Keys to add to keychain.

# Type: list of strings

# Default: [ "id_rsa" ]

# Declared by:

# <home-manager/modules/programs/keychain.nix>
