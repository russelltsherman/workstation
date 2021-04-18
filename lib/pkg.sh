#!/usr/bin/env bash
# shellcheck disable=SC1091

# shellcheck source=checks.sh
source "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/checks.sh"

# install asdf plugin and latest version
# USAGE:
#   pkg_install_asdf pluginname pluginrepo
pkg_install_asdf() {
  local pkg="${1}"
  local repo="${2}"

  asdf plugin-add "$pkg" "$repo"
  asdf install "$pkg" "$(asdf list-all "$pkg" | grep -v a | grep -v e | grep -v c | grep -v y | tail -1 | xargs)"
  asdf global "$pkg" "$(asdf list "$pkg" | tail -1 | xargs)"
}

# install package using homebrew
# USAGE:
#   pkg_install_brew packagename
pkg_install_brew() {
  local pkg="${1}"
  brew install "$pkg"
}

# install package using homebrew cask
# USAGE:
#   pkg_install_brew_cask packagename
pkg_install_brew_cask() {
  local pkg="${1}"
  brew install --cask "$pkg"
}

# install package using apt install
# USAGE:
#   pkg_install_debian packagename [reponame]
pkg_install_debian() {
  local pkg="${1}"
  local repo="${2}"

  chk_empty "$repo" || sudo apt-add-repository --yes --update "$repo"
  sudo sudo apt-get -qq install -y "$pkg"
}

# install package
# USAGE:
#   pkg_install packagename [reponame]
pkg_install() {
  local pkg="${1}"
  local repo="${2}"

  if chk_osx
  then
    pkg_install_brew "$pkg"
  fi

  if chk_linux
  then
    pkg_install_debian "$pkg" "$repo"
  fi
}

# USAGE:
#   pkg_remove_brew packagename
pkg_remove_brew() {
  local pkg="${1}"
  brew remove "$pkg"
}

# USAGE:
#   pkg_remove_debian packagename
pkg_remove_debian() {
  local pkg="${1}"
  sudo apt-get remove -y "$pkg"
}

# USAGE:
#   pkg_remove packagename
pkg_remove() {
  local pkg="${1}"

  if chk_osx
  then
    pkg_remove_brew "$pkg"
  fi

  if chk_linux
  then
    pkg_remove_debian "$pkg"
  fi
}
