{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    extraConfig = {
      core = {
        editor = "vi";
      };
      github = {
        user = "russelltsherman";
      };
      pull = {
        rebase = true;
      };
      url = {
        "git@github.com:" = {
          insteadOf = "https://github.com/";
        };
      };
    };
    ignores = [
      "*~"
      ".DS_Store"
    ];
    package = pkgs.git;
    signing.key = "1234ABCD";
    signing.signByDefault = true;
    userEmail = "russell.t.sherman@gmail.com";
    userName = "Russell Sherman";
  };
}

# programs.git.enable
# Whether to enable Git.

# Type: boolean

# Default: false

# Example: true

# Declared by:

# <home-manager/modules/programs/git.nix>
# programs.git.package
# Git package to install. Use pkgs.gitAndTools.gitFull to gain access to git send-email for instance.

# Type: package

# Default: pkgs.git

# Declared by:

# <home-manager/modules/programs/git.nix>
# programs.git.aliases
# Git aliases to define.

# Type: attribute set of strings

# Default: { }

# Example: { co = "checkout"; }

# Declared by:

# <home-manager/modules/programs/git.nix>
# programs.git.attributes
# List of defining attributes set globally.

# Type: list of strings

# Default: [ ]

# Example: [ "*.pdf diff=pdf" ]

# Declared by:

# <home-manager/modules/programs/git.nix>
# programs.git.delta.enable
# Whether to enable the delta syntax highlighter. See https://github.com/dandavison/delta.

# Type: boolean

# Default: false

# Example: true

# Declared by:

# <home-manager/modules/programs/git.nix>
# programs.git.delta.options
# Options to configure delta.

# Type: attribute set of string or boolean or signed integer or attribute set of string or boolean or signed integerss

# Default: { }

# Example: { decorations = { commit-decoration-style = "bold yellow box ul"; file-decoration-style = "none"; file-style = "bold yellow ul"; } ; features = "decorations"; whitespace-error-style = "22 reverse"; }

# Declared by:

# <home-manager/modules/programs/git.nix>
# programs.git.extraConfig
# Additional configuration to add. The use of string values is deprecated and will be removed in the future.

# Type: strings concatenated with "\n" or attribute set of attribute set of string or boolean or signed integer or list of string or boolean or signed integers or attribute set of string or boolean or signed integer or list of string or boolean or signed integerssss

# Default: { }

# Example: { core = { whitespace = "trailing-space,space-before-tab"; } ; url = { ssh://git@host = { insteadOf = "otherhost"; } ; } ; }

# Declared by:

# <home-manager/modules/programs/git.nix>
# programs.git.ignores
# List of paths that should be globally ignored.

# Type: list of strings

# Default: [ ]

# Example: [ "*~" "*.swp" ]

# Declared by:

# <home-manager/modules/programs/git.nix>
# programs.git.includes
# List of configuration files to include.

# Type: list of submodules

# Default: [ ]

# Example:

# [
#   { path = "~/path/to/config.inc"; }
#   {
#     path = "~/path/to/conditional.inc";
#     condition = "gitdir:~/src/dir";
#   }
# ]
# Declared by:

# <home-manager/modules/programs/git.nix>
# programs.git.includes.*.condition
# Include this configuration only when condition matches. Allowed conditions are described in git-config(1).

# Type: null or string

# Default: null

# Declared by:

# <home-manager/modules/programs/git.nix>
# programs.git.includes.*.contents
# Configuration to include. If empty then a path must be given.

# Type: attribute set of anythings

# Default: { }

# Declared by:

# <home-manager/modules/programs/git.nix>
# programs.git.includes.*.path
# Path of the configuration file to include.

# Type: string or path

# Declared by:

# <home-manager/modules/programs/git.nix>
# programs.git.lfs.enable
# Whether to enable Git Large File Storage.

# Type: boolean

# Default: false

# Example: true

# Declared by:

# <home-manager/modules/programs/git.nix>
# programs.git.lfs.skipSmudge
# Skip automatic downloading of objects on clone or pull. This requires a manual git lfs pull every time a new commit is checked out on your repository.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/git.nix>
# programs.git.signing
# Options related to signing commits using GnuPG.

# Type: null or submodule

# Default: null

# Declared by:

# <home-manager/modules/programs/git.nix>
# programs.git.signing.gpgPath
# Path to GnuPG binary to use.

# Type: string

# Default: "\${pkgs.gnupg}/bin/gpg2"

# Declared by:

# <home-manager/modules/programs/git.nix>
# programs.git.signing.key
# The default GPG signing key fingerprint.

# Set to null to let GnuPG decide what signing key to use depending on commit’s author.

# Type: null or string

# Declared by:

# <home-manager/modules/programs/git.nix>
# programs.git.signing.signByDefault
# Whether commits should be signed by default.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/git.nix>
# programs.git.userEmail
# Default user email to use.

# Type: null or string

# Default: null

# Declared by:

# <home-manager/modules/programs/git.nix>
# programs.git.userName
# Default user name to use.

# Type: null or string

# Default: null

# Declared by:

# <home-manager/modules/programs/git.nix>
