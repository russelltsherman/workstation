#!/usr/bin/env bash

# chk_app checks if a given app is installed
# usage:
#     chk_app "slack" || echo_red "slack not installed"
chk_app() {
  local app="${1}"
  chk_osx && mdfind "kMDItemKind == 'Application'" | grep -i "${app//-/ }" &> /dev/null && return 0
  chk_linux && chk_command "$app" && return 0
}

# chk_asdf_plugin returns true if a given asdf plugin is installed
# usage:
#     chk_asdf_plugin "direnv" && echo_green "asdf plugin direnv is installed"
chk_asdf_plugin() {
  local plugin="${1}"
  chk_command "asdf" && asdf plugin list | grep $plugin &> /dev/null
}

# chk_contains returns true if a given list contains a given value
# usage:
#     chk_contains "one two three" "three" && echo_green "found it"
chk_contains() {
  local list="$1"
  local item="$2"
  [[ $list =~ (^|[[:space:]])"$item"($|[[:space:]]) ]]
}

# chk_command checks if a given string would currently be interpreted by the shell as a command or alias.
# usage:
#     chk_command ll || alias ll='ls -l'
chk_command() {
	command -v $1 >/dev/null
}

# Check if function is defined
# USAGE:
#   chk_defined 'chk_defined' || echo_red "function not defined"
chk_defined() {
  typeset -f + "$1" &> /dev/null
}

# chk_empty returns true if a given value is empty
# usage:
#     chk_empty "xx" || echo_red "not empty"
chk_empty() {
  local var="$1"
  [ -z "$var" ]
}

# chk_file returns true if the given value is a file
# usage:
#     chk_file ~/.zshenvrc || echo_red "not a file"
chk_file() {
  local file="$1"
  [ -f "$file" ]
}

# chk_debian returns true if this OS is Debian Linux
# usage:
#     chk_debian && echo_green "this is Debian Linux"
chk_debian() {
  uname -a | grep "Debian" &> /dev/null
}

# chk_dir returns true if a given value is a directory
# usage:
#     chk_dir ~/ || echo_red "not a directory"
chk_dir() {
  local dir="$1"
  [ -d "$dir" ]
}

# Check if the current directory is in a Git repository.
# USAGE:
#   chk_git || echo_red "not a git repo"
chk_git() {
  [[ $(command git rev-parse --is-inside-work-tree 2>/dev/null) == true ]]
}

# Check if the current directory is in a Mercurial repository.
# USAGE:
#   chk_hg || echo_red "not a mercurial repo"
chk_hg() {
  local root
  root="$(pwd -P)"

  while [ "$root" ] && [ ! -d "$root/.hg" ]
  do
    root="${root%/*}"
  done

  [[ -n "$root" ]] &>/dev/null
}

# chk_linux returns true if this OS is Linux
# usage:
#     chk_linux && echo_green "this is Linux"
chk_linux() {
  uname -a | grep "Linux" &> /dev/null
}

# chk_number returns true if a given value is a number
# usage:
#     chk_number "S" || echo_red "this isn't a number"
chk_number() {
  local value="$1"
  [[ "$value" =~ ^[0-9]+$ ]]
}

# chk_osx returns true if this OS is Darwin
# usage:
#     chk_osx && echo_green "this is Mac OS"
chk_osx() {
  uname -a | grep "Darwin" &> /dev/null
}

# chk_ubuntu returns true if this OS is Ubuntu Linux
# usage:
#     chk_ubuntu && echo_green "this is Ubuntu Linux"
chk_ubuntu() {
  uname -a | grep "Ubuntu" &> /dev/null
}

# chk_osx returns true if this OS is Windows
# usage:
#     chk_windows && echo_green "this is Windows"
chk_windows() {
  uname -a | grep "MINGW32_NT" &> /dev/null
}




## it seems a bit redundant to have negative checks given that positive checks can be used for this
# chk_empty returns true if a given value is not empty
# usage:
#     chk_not_empty "xx" && echo_green "not empty"
chk_not_empty() {
  local var="$1"
  [ -n "$var" ]
}

# chk_file returns true if the given value is not a file
# usage:
#     chk_not_file "" && echo_green "not a file"
chk_not_file() {
  local file="$1"
  [ ! -f "$file" ]
}

# chk_empty returns true if a given value is not a directory
# usage:
#     chk_not_dir "" && echo_red "not a directory"
chk_not_dir() {
  local dir="$1"
  [ ! -d "$dir" ]
}

# chk_empty returns true if a given value is not a number
# usage:
#     chk_not_number "" && echo_red "not a number"
chk_not_number() {
  local value="$1"
  [[ ! "$value" =~ ^[0-9]+$ ]]
}

# chk_not_command returns true if a given string would currently NOT be interpreted by the shell as a command.
# Because there is no easy way to invert the exit status of a command for use in an if statement
# usage:
#     chk_not_command fuck && echo_red "not a command"
chk_not_command() {
	if command -v $1 >/dev/null
    then
		return 1
	else
		return 0
	fi
}
