#!/usr/bin/env bash
# shellcheck disable=SC1091

# shellcheck source=echos.sh
source "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/echos.sh"

banner='
               _                      _
  ___ ___   __| | ___ _ __ ___  _ __ (_)_ __
 / __/ _ \ / _  |/ _ \  __/ _ \|  _ \| |  _ \
| (_| (_) | (_| |  __/ | | (_) | | | | | | | |
 \___\___/ \__,_|\___|_|  \___/|_| |_|_|_| |_|
'
export BANNER="${BANNER:-$banner}"

# usage:
#     tui_banner
tui_banner() {
  clear
  echo_green "${BANNER}"
}

# usage:
#     tui_action "action message"
tui_action() {
  local msg="${1:-}"
  echo_yellow "[action]: ⇒ ${msg}" 1>&2
}

# usage:
#     tui_bot "bot message"
tui_bot() {
  local msg="${1:-}"
  echo_green "\n \[._.]/ - ${msg}" 1>&2
}

# usage:
#     tui_bot_confirm "bot asking for confirmation"
tui_bot_confirm() {
  local msg="${1:-}"
  tui_bot "$msg" 1>&2
  echo "Press any key to continue." 1>&2
  read
}

# usage:
#     tui_die "death message"
tui_die() {
  (>&2 echo "$@")
  exit 1
}

# usage:
#     tui_error "error message"
tui_error() {
  local msg="${1:-}"
  echo_red "[error] ${msg}" 1>&2
}

# usage:
#     tui_info "info message"
tui_info() {
  local msg="${1:-}"
  echo_cyan "[info] ${msg}" 1>&2
}

# usage:
#     tui_line
tui_line() {
  __echo "---------------------------------------------------------------------------"
}

# usage:
#     tui_ok "optional message"
tui_ok() {
  local msg="${1:-}"
  echo_green "[ok] ${msg}" 1>&2
}

# usage:
#     tui_running "running message"
tui_running() {
  local msg="${1:-}"
  echo_magenta " ⇒ ${msg}: " 1>&2
}

# usage:
#     tui_warn "warning message"
tui_warn() {
  local msg="${1:-}"
  echo_yellow "[warning] ${msg}" 1>&2
}
