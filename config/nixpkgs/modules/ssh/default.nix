{ pkgs, ... }:

{

  programs.ssh = {
    enable = true;
  };

}

# programs.ssh.compression # Specifies whether to use compression.
# Type: boolean
# Default: false

# programs.ssh.controlMaster # Configure sharing of multiple sessions over a single network connection.
# Type: one of "yes", "no", "ask", "auto", "autoask"
# Default: "no"

# programs.ssh.controlPath # Specify path to the control socket used for connection sharing.
# Type: string
# Default: "~/.ssh/master-%r@%n:%p"

# programs.ssh.controlPersist # Whether control socket should remain open in the background.
# Type: string
# Default: "no"
# Example: "10m"

# programs.ssh.extraConfig # Extra configuration.
# Type: strings concatenated with "\n"
# Default: ""

# programs.ssh.extraOptionOverrides # Extra SSH configuration options that take precedence over any host specific configuration.
# Type: attribute set of strings
# Default: { }

# programs.ssh.forwardAgent # Whether the connection to the authentication agent (if any) will be forwarded to the remote machine.
# Type: boolean
# Default: false

# programs.ssh.hashKnownHosts # Indicates that ssh(1) should hash host names and addresses when they are added to the known hosts file.
# Type: boolean
# Default: false

# programs.ssh.matchBlocks # Specify per-host settings. Note, if the order of rules matter then use the DAG functions to express the dependencies as shown in the example.
# See ssh_config(5) for more information.
# Type: list or DAG of submodules
# Default: { }

# Example:

# {
#   "john.example.com" = {
#     hostname = "example.com";
#     user = "john";
#   };
#   foo = lib.hm.dag.entryBefore ["john.example.com"] {
#     hostname = "example.com";
#     identityFile = "/home/john/.ssh/foo_rsa";
#   };
# };
# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.addressFamily
# Specifies which address family to use when connecting.

# Type: null or one of "any", "inet", "inet6"

# Default: null

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.certificateFile
# Specifies files from which the user certificate is read.

# Type: list of strings or null or string

# Default: [ ]

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.checkHostIP
# Check the host IP address in the known_hosts file.

# Type: boolean

# Default: true

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.compression
# Specifies whether to use compression. Omitted from the host block when null.

# Type: null or boolean

# Default: null

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.dynamicForwards
# Specify dynamic port forwardings. See ssh_config(5) for DynamicForward.

# Type: list of submodules

# Default: [ ]

# Example:

# [ { port = 8080; } ];
# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.dynamicForwards.*.address
# The address where to bind the port.

# Type: string

# Default: "localhost"

# Example: "example.org"

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.dynamicForwards.*.port
# Specifies port number to bind on bind address.

# Type: 16 bit unsigned integer; between 0 and 65535 (both inclusive)

# Example: 8080

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.extraOptions
# Extra configuration options for the host.

# Type: attribute set of strings

# Default: { }

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.forwardAgent
# Whether the connection to the authentication agent (if any) will be forwarded to the remote machine.

# Type: null or boolean

# Default: null

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.forwardX11
# Specifies whether X11 connections will be automatically redirected over the secure channel and DISPLAY set.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.forwardX11Trusted
# Specifies whether remote X11 clients will have full access to the original X11 display.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.host
# The host pattern used by this conditional block.

# Type: string

# Example: "*.example.org"

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.hostname
# Specifies the real host name to log into.

# Type: null or string

# Default: null

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.identitiesOnly
# Specifies that ssh should only use the authentication identity explicitly configured in the ~/.ssh/config files or passed on the ssh command-line, even if ssh-agent offers more identities.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.identityFile
# Specifies files from which the user identity is read. Identities will be tried in the given order.

# Type: list of strings or null or string

# Default: [ ]

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.localForwards
# Specify local port forwardings. See ssh_config(5) for LocalForward.

# Type: list of submodules

# Default: [ ]

# Example:

# [
#   {
#     bind.port = 8080;
#     host.address = "10.0.0.13";
#     host.port = 80;
#   }
# ];
# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.localForwards.*.bind.address
# The address where to bind the port.

# Type: string

# Default: "localhost"

# Example: "example.org"

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.localForwards.*.bind.port
# Specifies port number to bind on bind address.

# Type: 16 bit unsigned integer; between 0 and 65535 (both inclusive)

# Example: 8080

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.localForwards.*.host.address
# The address where to forward the traffic to.

# Type: string

# Example: "example.org"

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.localForwards.*.host.port
# Specifies port number to forward the traffic to.

# Type: 16 bit unsigned integer; between 0 and 65535 (both inclusive)

# Example: 80

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.port
# Specifies port number to connect on remote host.

# Type: null or 16 bit unsigned integer; between 0 and 65535 (both inclusive)

# Default: null

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.proxyCommand
# The command to use to connect to the server.

# Type: null or string

# Default: null

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.proxyJump
# The proxy host to use to connect to the server.

# Type: null or string

# Default: null

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.remoteForwards
# Specify remote port forwardings. See ssh_config(5) for RemoteForward.

# Type: list of submodules

# Default: [ ]

# Example:

# [
#   {
#     bind.port = 8080;
#     host.address = "10.0.0.13";
#     host.port = 80;
#   }
# ];
# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.remoteForwards.*.bind.address
# The address where to bind the port.

# Type: string

# Default: "localhost"

# Example: "example.org"

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.remoteForwards.*.bind.port
# Specifies port number to bind on bind address.

# Type: 16 bit unsigned integer; between 0 and 65535 (both inclusive)

# Example: 8080

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.remoteForwards.*.host.address
# The address where to forward the traffic to.

# Type: string

# Example: "example.org"

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.remoteForwards.*.host.port
# Specifies port number to forward the traffic to.

# Type: 16 bit unsigned integer; between 0 and 65535 (both inclusive)

# Example: 80

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.sendEnv
# Environment variables to send from the local host to the server.

# Type: list of strings

# Default: [ ]

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.serverAliveCountMax
# Sets the number of server alive messages which may be sent without SSH receiving any messages back from the server.

# Type: positive integer, meaning >0

# Default: 3

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.serverAliveInterval
# Set timeout in seconds after which response will be requested.

# Type: signed integer

# Default: 0

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.matchBlocks.<name>.user
# Specifies the user to log in as.

# Type: null or string

# Default: null

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.serverAliveCountMax
# Sets the default number of server alive messages which may be sent without SSH receiving any messages back from the server.

# Type: positive integer, meaning >0

# Default: 3

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.serverAliveInterval
# Set default timeout in seconds after which response will be requested.

# Type: signed integer

# Default: 0

# Declared by:

# <home-manager/modules/programs/ssh.nix>
# programs.ssh.userKnownHostsFile
# Specifies one or more files to use for the user host key database, separated by whitespace. The default is ~/.ssh/known_hosts.

# Type: string

# Default: "~/.ssh/known_hosts"

# Declared by:

# <home-manager/modules/programs/ssh.nix>
