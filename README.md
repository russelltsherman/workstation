# workstation

workstation provisioner

## Quick Start

On a fresh mac you won't have git or other required dependencies installed..
open a Terminal and run...

```sh
curl -fsSL https://raw.githubusercontent.com/russelltsherman/dotfiles/main/bin/bootstrap | bash
```

## Usage

1. `git clone https://github.com/russelltsherman/workstation` to pull down the repository
1. `make init` to initialize the [`build-harness`](https://github.com/opsbot/build-harness/)
1. `make bootstrap` to initialize workstation apps and settings

## update

1. `make update` to pull upstream changes and rerun bootstrap

## Adblocking Hosts file

Use this file to prevent your computer from connecting to selected internet hosts.
This is an easy and effective way to protect you from many types of spyware,
reduces bandwidth use, blocks certain pop-up traps, prevents user tracking by
way of "web bugs" embedded in spam, provides partial protection to IE from certain
web-based exploits and blocks most advertising you would otherwise be subjected
to on the internet.

```sh
make -B /etc/hosts
```
