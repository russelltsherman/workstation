{ pkgs, ... }:

{

  programs.go = {
    enable = true;
  };

}

# programs.go.enable
# Whether to enable Go.

# Type: boolean

# Default: false

# Example: true

# Declared by:

# <home-manager/modules/programs/go.nix>
# programs.go.package
# The Go package to use.

# Type: package

# Default: pkgs.go

# Declared by:

# <home-manager/modules/programs/go.nix>
# programs.go.packages
# Packages to add to GOPATH.

# Type: attribute set of paths

# Default: { }

# Example:

# {
#   "golang.org/x/text" = builtins.fetchGit "https://go.googlesource.com/text";
#   "golang.org/x/time" = builtins.fetchGit "https://go.googlesource.com/time";
# }
# Declared by:

# <home-manager/modules/programs/go.nix>
# programs.go.extraGoPaths
# Extra GOPATHs relative to HOME appended after programs.go.goPath, if that option is set.

# Type: list of strings

# Default: [ ]

# Example: [ "extraGoPath1" "extraGoPath2" ]

# Declared by:

# <home-manager/modules/programs/go.nix>
# programs.go.goBin
# GOBIN relative to HOME

# Type: null or string

# Default: null

# Example: ".local/bin.go"

# Declared by:

# <home-manager/modules/programs/go.nix>
# programs.go.goPath
# Primary GOPATH relative to HOME. It will be exported first and therefore used by default by the Go tooling.

# Type: null or string

# Default: null

# Example: "go"

# Declared by:

# <home-manager/modules/programs/go.nix>
# programs.go.goPrivate
# The GOPRIVATE environment variable controls which modules the go command considers to be private (not available publicly) and should therefore not use the proxy or checksum database.

# Type: list of strings

# Default: [ ]

# Example: [ "*.corp.example.com" "rsc.io/private" ]

# Declared by:

# <home-manager/modules/programs/go.nix>
