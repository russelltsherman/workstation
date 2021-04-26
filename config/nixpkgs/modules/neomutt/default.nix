{ pkgs, ... }:

{

  programs.neomutt = {
    enable = true;
  };

}

# programs.neomutt.enable
# Whether to enable the NeoMutt mail client.

# Type: boolean

# Default: false

# Example: true

# Declared by:

# <home-manager/modules/programs/neomutt.nix>
# programs.neomutt.binds
# List of keybindings.

# Type: list of submodules

# Default: [ ]

# Declared by:

# <home-manager/modules/programs/neomutt.nix>
# programs.neomutt.binds.*.action
# Specify the action to take.

# Type: string

# Example: "<enter-command>toggle sidebar_visible<enter><refresh>"

# Declared by:

# <home-manager/modules/programs/neomutt.nix>
# programs.neomutt.binds.*.key
# The key to bind.

# Type: string

# Example: "<left>"

# Declared by:

# <home-manager/modules/programs/neomutt.nix>
# programs.neomutt.binds.*.map
# Select the menu to bind the command to.

# Type: one of "alias", "attach", "browser", "compose", "editor", "generic", "index", "mix", "pager", "pgp", "postpone", "query", "smime" or list of one of "alias", "attach", "browser", "compose", "editor", "generic", "index", "mix", "pager", "pgp", "postpone", "query", "smime"s

# Default: "index"

# Declared by:

# <home-manager/modules/programs/neomutt.nix>
# programs.neomutt.checkStatsInterval
# Enable and set the interval of automatic mail check.

# Type: null or signed integer

# Default: null

# Example: 60

# Declared by:

# <home-manager/modules/programs/neomutt.nix>
# programs.neomutt.editor
# Select the editor used for writing mail.

# Type: string

# Default: "\$EDITOR"

# Declared by:

# <home-manager/modules/programs/neomutt.nix>
# programs.neomutt.extraConfig
# Extra configuration appended to the end.

# Type: strings concatenated with "\n"

# Default: ""

# Declared by:

# <home-manager/modules/programs/neomutt.nix>
# programs.neomutt.macros
# List of macros.

# Type: list of submodules

# Default: [ ]

# Declared by:

# <home-manager/modules/programs/neomutt.nix>
# programs.neomutt.macros.*.action
# Specify the action to take.

# Type: string

# Example: "<enter-command>toggle sidebar_visible<enter><refresh>"

# Declared by:

# <home-manager/modules/programs/neomutt.nix>
# programs.neomutt.macros.*.key
# The key to bind.

# Type: string

# Example: "<left>"

# Declared by:

# <home-manager/modules/programs/neomutt.nix>
# programs.neomutt.macros.*.map
# Select the menu to bind the command to.

# Type: one of "alias", "attach", "browser", "compose", "editor", "generic", "index", "mix", "pager", "pgp", "postpone", "query", "smime" or list of one of "alias", "attach", "browser", "compose", "editor", "generic", "index", "mix", "pager", "pgp", "postpone", "query", "smime"s

# Default: "index"

# Declared by:

# <home-manager/modules/programs/neomutt.nix>
# programs.neomutt.settings
# Extra configuration appended to the end.

# Type: attribute set of strings

# Default: { }

# Declared by:

# <home-manager/modules/programs/neomutt.nix>
# programs.neomutt.sidebar
# Options related to the sidebar.

# Type: submodule

# Default: { }

# Declared by:

# <home-manager/modules/programs/neomutt.nix>
# programs.neomutt.sidebar.enable
# Whether to enable sidebar support.

# Type: boolean

# Default: false

# Example: true

# Declared by:

# <home-manager/modules/programs/neomutt.nix>
# programs.neomutt.sidebar.format
# Sidebar format. Check neomutt documentation for details.

# Type: string

# Default: "%B%?F? [%F]?%* %?N?%N/?%S"

# Declared by:

# <home-manager/modules/programs/neomutt.nix>
# programs.neomutt.sidebar.shortPath
# By default sidebar shows the full path of the mailbox, but with this enabled only the relative name is shown.

# Type: boolean

# Default: true

# Declared by:

# <home-manager/modules/programs/neomutt.nix>
# programs.neomutt.sidebar.width
# Width of the sidebar

# Type: signed integer

# Default: 22

# Declared by:

# <home-manager/modules/programs/neomutt.nix>
# programs.neomutt.sort
# Sorting method on messages.

# Type: one of "date", "date-received", "from", "mailbox-order", "score", "size", "spam", "subject", "threads", "to", "reverse-date", "reverse-date-received", "reverse-from", "reverse-mailbox-order", "reverse-score", "reverse-size", "reverse-spam", "reverse-subject", "reverse-threads", "reverse-to"

# Default: "threads"

# Declared by:

# <home-manager/modules/programs/neomutt.nix>
# programs.neomutt.vimKeys
# Enable vim-like bindings.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/neomutt.nix>
