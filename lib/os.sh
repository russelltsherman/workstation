#!/usr/bin/env bash
# shellcheck disable=SC1091

# shellcheck source=./modules/bash-commons/src/log.sh
source "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/log.sh"

# Return the available memory on the current OS in MB
os_get_available_memory_mb() {
  free -m | awk 'NR==2{print $2}'
}

# Returns true (0) if this is an Amazon Linux server at the given version or false (1) otherwise. The version number
# can use regex. If you don't care about the version, leave it unspecified.
os_is_amazon_linux() {
  local -r version="$1"
  grep -q "Amazon Linux * $version" /etc/*release
}

# Returns true (0) if this is an Ubuntu server at the given version or false (1) otherwise. The version number
# can use regex. If you don't care about the version, leave it unspecified.
os_is_ubuntu() {
  local -r version="$1"
  grep -q "Ubuntu $version" /etc/*release
}

# Returns true (0) if this is a CentOS server at the given version or false (1) otherwise. The version number
# can use regex. If you don't care about the version, leave it unspecified.
os_is_centos() {
  local -r version="$1"
  grep -q "CentOS Linux release $version" /etc/*release
}

# Returns true (0) if this is a RedHat server at the given version or false (1) otherwise. The version number
# can use regex. If you don't care about the version, leave it unspecified.
os_is_redhat() {
  local -r version="$1"
  grep -q "Red Hat Enterprise Linux Server release $version" /etc/*release
}


# Returns true (0) if this is an OS X server or false (1) otherwise.
os_is_darwin() {
  [[ $(uname -s) == "Darwin" ]]
}

# Validate that the given file has the given checksum of the given checksum type, where type is one of "md5" or
# "sha256".
os_validate_checksum() {
  local -r filepath="$1"
  local -r checksum="$2"
  local -r checksum_type="$3"

  case "$checksum_type" in
    sha256)
      log_info "Validating sha256 checksum of $filepath is $checksum"
      echo "$checksum $filepath" | sha256sum -c
      ;;
    md5)
      log_info "Validating md5 checksum of $filepath is $checksum"
      echo "$checksum $filepath" | md5sum -c
      ;;
    *)
      log_error "Unsupported checksum type: $checksum_type."
      exit 1
  esac
}

# Returns true (0) if this the given command/app is installed and on the PATH or false (1) otherwise.
os_command_is_installed() {
  local -r name="$1"
  command -v "$name" > /dev/null
}

# Get the username of the current OS user
os_get_current_users_name() {
  id -u -n
}

# Get the name of the primary group for the current OS user
os_get_current_users_group() {
  id -g -n
}

# Returns true (0) if the current user is root or sudo and false (1) otherwise.
os_user_is_root_or_sudo() {
  [[ "$EUID" == 0 ]]
}

# Returns a zero exit code if the given $username exists
os_user_exists() {
  local -r username="$1"
  id "$username" >/dev/null 2>&1
}

# Create an OS user whose name is $username
os_create_user() {
  local -r username="$1"

  if os_user_exists "$username"; then
    log_info "User $username already exists. Will not create again."
  else
    log_info "Creating user named $username"
    useradd "$username"
  fi
}

# Change the owner of $dir to $username
os_change_dir_owner() {
  local -r dir="$1"
  local -r username="$2"

  log_info "Changing ownership of $dir to $username"
  chown -R "$username:$username" "$dir"
}
