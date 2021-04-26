{ pkgs, ... }:

let

  extras = [
    ./extract.zsh
  ];
  extraInitExtra = builtins.foldl' (soFar: new: soFar + "\n" + builtins.readFile new) "" extras;

in

{
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    # enableVteIntegration = true; # not supported on darwin
    autocd = true;
    cdpath = [];
    defaultKeymap = "vicmd";
    dirHashes = {
      docs  = "$HOME/Documents";
      vids  = "$HOME/Videos";
      dl    = "$HOME/Downloads";
    };
    dotDir = ".zsh";
    envExtra = ''
      #!/usr/bin/env zsh

      #
      # Z Shell Startup File
      #

      # - `$ZDOTDIR/.zshenv`
      #   .zshenv is sourced on all invocations of the shell, unless the -f option is set.
      #   It should contain commands to set the command search path, plus other important environment variables.
      #   .zshenv should not contain commands that produce output or assume the shell is attached to a tty.

      # If ZDOTDIR is not set, then the value of HOME is used; this is the usual case.

      export XDG_CONFIG_HOME="$HOME/.config"
      [ -d "$XDG_CONFIG_HOME" ] || mkdir -p "$XDG_CONFIG_HOME" # ensure $XDG_CONFIG_HOME dir exists

      export ZDOTDIR="$HOME/.zsh"
      [ -d "$ZDOTDIR" ] || mkdir -p "$ZDOTDIR" # ensure $ZDOTDIR dir exists

      export ZDOTDEEDIR="$HOME/.zsh.d"
      [ -d "$ZDOTDEEDIR" ] || mkdir -p "$ZDOTDEEDIR" # ensure $ZDOTDEEDIR dir exists

      export ZDOTCACHEDIR="$HOME/.cache/zsh"
      [ -d "$ZDOTCACHEDIR" ] || mkdir -p "$ZDOTCACHEDIR" # ensure $ZDOTCACHEDIR dir exists

      # if user has a home bin directory add it to the path
      [ -d "$HOME/bin" ] && export PATH="$HOME/bin:$PATH"
    '';
    history = {
      extended = true;
      expireDuplicatesFirst = true;
      ignoreDups = true;
      ignoreSpace = true;
      path = "$ZDOTCACHEDIR/.zsh_history";
      save = 1000;
      share = true;
      size = 1000;
    };
    initExtra = ''
      export TERM="xterm-256color"
      bindkey -e
      if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then
        . ~/.nix-profile/etc/profile.d/nix.sh
      fi
      if [ -e ~/.nix-profile/etc/profile.d/hm-session-vars.sh ]; then
        . ~/.nix-profile/etc/profile.d/hm-session-vars.sh
      fi
      if command -v kubectl 1>/dev/null 2>&1; then
        source <(kubectl completion zsh)
      fi
      if [ -f "/usr/local/share/zsh/site-functions/aws_zsh_completer.sh" ]; then
        source /usr/local/share/zsh/site-functions/aws_zsh_completer.sh
      fi
      if command -v direnv 1>/dev/null 2>&1; then
        eval "$(direnv hook zsh)"
      fi
      if command -v pyenv 1>/dev/null 2>&1; then
        eval "$(pyenv init -)"
      fi
    '' + extraInitExtra;
    initExtraBeforeCompInit = ''
    '';
    initExtraFirst = ''
    '';
    loginExtra = ''
      #!/usr/bin/env zsh

      #
      # Z Shell Startup File
      #

      # - `$ZDOTDIR/.zlogin`
      #   zlogin should contain commands that should be executed only in login shells.
      #   zlogin is not the place for alias definitions, options, environment variable settings, etc.;
      #   as a general rule, it should not change the shell environment at all.
      #   Rather, it should be used to set the terminal type and run a series of external commands (fortune, msgs, etc).

      # if pfetch command is istalled AND ENABLED call it once on login
      [ $commands[pfetch] ] && [[ "$PFETCH_ENABLE" == "true" ]] && pfetch
    '';
    logoutExtra = ''
      #!/usr/bin/env zsh

      #
      # Z Shell Startup File
      #

      # - `$ZDOTDIR/.zlogout`
      #   .zlogout is sourced when login shells exit.
    '';
    plugins = [
      {
        name = "enhancd";
        file = "init.sh";
        src = pkgs.fetchFromGitHub {
          owner = "b4b4r07";
          repo = "enhancd";
          rev = "v2.2.1";
          sha256 = "0iqa9j09fwm6nj5rpip87x3hnvbbz9w9ajgm6wkrd5fls8fn8i5g";
        };
      }
      {
        name = "zsh-autosuggestions";
        src = pkgs.fetchFromGitHub {
          owner = "zsh-users";
          repo = "zsh-autosuggestions";
          rev = "v0.4.0";
          sha256 = "0z6i9wjjklb4lvr7zjhbphibsyx51psv50gm07mbb0kj9058j6kc";
        };
      }
    ];
    profileExtra = ''
      #!/usr/bin/env zsh

      #
      # Z Shell Startup File
      #

      # `$ZDOTDIR/.zprofile`
      #   zprofile is similar to zlogin, except that it is sourced before zshrc.
      #   zprofile is meant as an alternative to zlogin for ksh fans; the two are not intended to be used together, although this could certainly be done if desired.
    '';
    sessionVariables = {
      EDITOR = "vi";
      FOO = "bar";
    };
    shellAliases = {
      garbage = "nix-collect-garbage -d && docker image prune --force";
    };
  };

}

# programs.zsh.enableCompletion # Enable zsh completion. Don't forget to add
#   environment.pathsToLink = [ "/share/zsh" ];
# programs.zsh.cdpath # List of paths to autocomplete calls to `cd`.
# programs.zsh.localVariables # Extra local variables defined at the top of .zshrc.
# programs.zsh.sessionVariables # Environment variables that will be set for zsh session.

# Type: attribute set of strings

# Default: { }

# Example:

# {
#   ll = "ls -l";
#   ".." = "cd ..";
# }
# Declared by:

# <home-manager/modules/programs/zsh.nix>
# programs.zsh.shellGlobalAliases
# Similar to opt-programs.zsh.shellAliases, but are substituted anywhere on a line.

# Type: attribute set of strings

# Default: { }

# Example:

# {
#   UUID = "$(uuidgen | tr -d \\n)";
#   G = "| grep";
# }
# Declared by:

# <home-manager/modules/programs/zsh.nix>
