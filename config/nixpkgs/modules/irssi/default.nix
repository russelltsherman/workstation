{ pkgs, ... }:

{

  programs.irssi = {
    enable = true;
  };

}

# programs.irssi.enable
# Whether to enable the Irssi chat client.

# Type: boolean

# Default: false

# Example: true

# Declared by:

# <home-manager/modules/programs/irssi.nix>
# programs.irssi.aliases
# An attribute set that maps aliases to commands.

# Type: attribute set of strings

# Default: { }

# Example: { BYE = "quit"; J = "join"; }

# Declared by:

# <home-manager/modules/programs/irssi.nix>
# programs.irssi.extraConfig
# These lines are appended to the Irssi configuration.

# Type: string

# Default: ""

# Declared by:

# <home-manager/modules/programs/irssi.nix>
# programs.irssi.networks
# An attribute set of chat networks.

# Type: attribute set of submodules

# Default: { }

# Example:

# {
#   freenode = {
#     nick = "hmuser";
#     server = {
#       address = "chat.freenode.net";
#       port = 6697;
#       autoConnect = true;
#     };
#     channels = {
#       nixos.autoJoin = true;
#     };
#   };
# }
# Declared by:

# <home-manager/modules/programs/irssi.nix>
# programs.irssi.networks.<name>.autoCommands
# List of commands to execute on connect.

# Type: list of strings

# Default: [ ]

# Declared by:

# <home-manager/modules/programs/irssi.nix>
# programs.irssi.networks.<name>.channels
# Channels for the given network.

# Type: attribute set of submodules

# Default: { }

# Declared by:

# <home-manager/modules/programs/irssi.nix>
# programs.irssi.networks.<name>.channels.<name>.autoJoin
# Whether to join this channel on connect.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/irssi.nix>
# programs.irssi.networks.<name>.nick
# Nickname in that network.

# Type: string

# Declared by:

# <home-manager/modules/programs/irssi.nix>
# programs.irssi.networks.<name>.server.address
# Address of the chat server.

# Type: string

# Declared by:

# <home-manager/modules/programs/irssi.nix>
# programs.irssi.networks.<name>.server.autoConnect
# Whether Irssi connects to the server on launch.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/irssi.nix>
# programs.irssi.networks.<name>.server.port
# Port of the chat server.

# Type: 16 bit unsigned integer; between 0 and 65535 (both inclusive)

# Default: 6667

# Declared by:

# <home-manager/modules/programs/irssi.nix>
# programs.irssi.networks.<name>.server.ssl.enable
# Whether SSL should be used.

# Type: boolean

# Default: true

# Declared by:

# <home-manager/modules/programs/irssi.nix>
# programs.irssi.networks.<name>.server.ssl.verify
# Whether the SSL certificate should be verified.

# Type: boolean

# Default: true

# Declared by:

# <home-manager/modules/programs/irssi.nix>
# programs.irssi.networks.<name>.type
# Type of the network.

# Type: string

# Default: "IRC"

# Declared by:

# <home-manager/modules/programs/irssi.nix>
