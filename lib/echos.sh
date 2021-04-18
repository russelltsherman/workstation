#!/usr/bin/env bash
# shellcheck disable=SC1091
# shellcheck disable=SC2154

# shellcheck source=colors.sh
source "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/colors.sh"

__echo() {
	echo -e "$*" 1>&2
}

# usage:
#     echo_bold "message"
echo_bold() {
	echo -e "${__clr_bold}$*${__clr_reset}" 1>&2
}

# usage:
#     echo_black "message"
echo_black() {
	echo -e "${__clr_black}$*${__clr_reset}" 1>&2
}

# usage:
#     echo_blue "message"
echo_blue() {
	echo -e "${__clr_blue}$*${__clr_reset}" 1>&2
}

# usage:
#     echo_cyan "message"
echo_cyan() {
	echo -e "${__clr_cyan}$*${__clr_reset}" 1>&2
}

# usage:
#     echo_dim "message"
echo_dim() {
	echo -e "${__clr_dim}$*${__clr_reset}" 1>&2
}

# usage:
#     echo_green "message"
echo_green() {
	echo -e "${__clr_green}$*${__clr_reset}" 1>&2
}

# usage:
#     echo_magenta "message"
echo_magenta() {
	echo -e "${__clr_magenta}$*${__clr_reset}" 1>&2
}

# usage:
#     echo_red "message"
echo_red() {
	echo -e "${__clr_red}$*${__clr_reset}" 1>&2
}

# usage:
#     echo_reverse "message"
echo_reverse() {
	echo -e "${__clr_rev}$*${__clr_reset}" 1>&2
}

# usage:
#     echo_standout "message"
echo_standout() {
	echo -e "${__clr_smso}$*${__clr_reset}" 1>&2
}

# usage:
#     echo_underline "message"
echo_underline() {
	echo -e "${__clr_smul}$*${__clr_reset}" 1>&2
}

# usage:
#     echo_white "message"
echo_white() {
	echo -e "${__clr_white}$*${__clr_reset}" 1>&2
}

# usage:
#     echo_yellow "message"
echo_yellow() {
	echo -e "${__clr_yellow}$*${__clr_reset}" 1>&2
}

# Display seconds in human readable fromat
# Based on http://stackoverflow.com/a/32164707/3859566
# USAGE:
#   echo_displaytime <seconds>
echo_displaytime() {
  local T=$1
  local D=$((T/60/60/24))
  local H=$((T/60/60%24))
  local M=$((T/60%60))
  local S=$((T%60))
  [[ $D -gt 0 ]] && printf '%dd ' $D
  [[ $H -gt 0 ]] && printf '%dh ' $H
  [[ $M -gt 0 ]] && printf '%dm ' $M
  printf '%ds' $S
}
