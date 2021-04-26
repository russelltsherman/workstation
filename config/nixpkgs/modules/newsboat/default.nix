{ pkgs, ... }:

{

  programs.newsboat = {
    enable = true;
  };

}

# programs.newsboat.enable
# Whether to enable the Newsboat feed reader.

# Type: boolean

# Default: false

# Example: true

# Declared by:

# <home-manager/modules/programs/newsboat.nix>
# programs.newsboat.autoReload
# Whether to enable automatic reloading while newsboat is running.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/newsboat.nix>
# programs.newsboat.browser
# External browser to use.

# Type: string

# Default: "\${pkgs.xdg-utils}/bin/xdg-open"

# Declared by:

# <home-manager/modules/programs/newsboat.nix>
# programs.newsboat.extraConfig
# Extra configuration values that will be appended to the end.

# Type: strings concatenated with "\n"

# Default: ""

# Declared by:

# <home-manager/modules/programs/newsboat.nix>
# programs.newsboat.maxItems
# Maximum number of items per feed, 0 for infinite.

# Type: signed integer

# Default: 0

# Declared by:

# <home-manager/modules/programs/newsboat.nix>
# programs.newsboat.queries
# A list of queries to use.

# Type: attribute set of strings

# Default: { }

# Example: { foo = ''rssurl =~ "example.com"''; }

# Declared by:

# <home-manager/modules/programs/newsboat.nix>
# programs.newsboat.reloadThreads
# How many threads to use for updating the feeds.

# Type: signed integer

# Default: 5

# Declared by:

# <home-manager/modules/programs/newsboat.nix>
# programs.newsboat.reloadTime
# Time in minutes between reloads.

# Type: null or signed integer

# Default: 60

# Declared by:

# <home-manager/modules/programs/newsboat.nix>
# programs.newsboat.urls
# List of news feeds.

# Type: list of submodules

# Default: [ ]

# Example: [ { tags = [ "foo" "bar" ] ; url = "http://example.com"; } ]

# Declared by:

# <home-manager/modules/programs/newsboat.nix>
# programs.newsboat.urls.*.tags
# Feed tags.

# Type: list of strings

# Default: [ ]

# Example: [ "foo" "bar" ]

# Declared by:

# <home-manager/modules/programs/newsboat.nix>
# programs.newsboat.urls.*.title
# Feed title.

# Type: null or string

# Default: null

# Example: "ORF News"

# Declared by:

# <home-manager/modules/programs/newsboat.nix>
# programs.newsboat.urls.*.url
# Feed URL.

# Type: string

# Example: "http://example.com"

# Declared by:

# <home-manager/modules/programs/newsboat.nix>
