-include $(shell curl -sSL -o .build-harness "https://raw.githubusercontent.com/opsbot/build-harness/main/templates/Makefile.build-harness"; echo .build-harness)

current_dir = $(shell pwd)
BINSCRIPT_NAMES := $(subst ./, , $(shell find ./bin -maxdepth 1 -type f \( ! -iname "bootstrap" \)))
BINSCRIPTS := $(addprefix ~/, $(BINSCRIPT_NAMES))
DOTFILE_NAMES := $(subst ./dotfiles/, , $(shell find ./dotfiles -maxdepth 1 -name ".*"))
DOTFILES := $(addprefix ~/, $(DOTFILE_NAMES))
LIBFILE_NAMES := $(subst ./, , $(shell find ./lib -maxdepth 1 -name "*.sh"))
LIBFILES := $(addprefix ~/, $(LIBFILE_NAMES))

## initialize project
bootstrap: \
	brew \
	binscripts \
	dotfiles \
	gitconfig \
	libfiles \
	tmux \
	vim \
	vscode \
	zsh \
	/etc/hosts
.PHONY: bootstrap

## symlink contents of local bin diretory into user home ~/bin
binscripts: ~/bin cleanbinscripts \
	$(BINSCRIPTS) # iterate our list of dotfiles and ensure they are symlinked
.PHONY: binscripts

## clean symlinks of local binfiles diretory from user home ~/bin
cleanbinscripts:
	@for file in $(BINSCRIPT_NAMES) ; do if [ -L ~/$${file} ];then rm ~/$${file}; fi; done
.PHONY: cleanbinscripts

## clean symlinks of local dotfiles diretory from user home ~/
cleandotfiles:
	@for file in $(DOTFILE_NAMES) ; do if [ -L ~/$${file} ];then rm ~/$${file}; fi; done
.PHONY: cleandotfiles

## clean symlinks of local lib diretory from user home ~/lib
cleanlibfiles:
	@for file in $(LIBFILE_NAMES) ; do if [ -L ~/$${file} ];then rm ~/$${file}; fi; done
.PHONY: cleanlibfiles

## symlink contents of local dotfiles diretory into user home ~/
dotfiles: cleandotfiles $(DOTFILES)
.PHONY: dotfiles

## include our supplemental global gitconfig into users global gitconfig
gitconfig:
	# link .gitignore to global git config
	git config --global core.excludesfile ./.gitignore
	# link .gitconfig_globbal to global git config
	git config --global include.path ./.gitconfig_global
.PHONY: gitconfig

## symlink contents of local lib diretory into user home ~/lib
libfiles: ~/lib cleanlibfiles $(LIBFILES)
.PHONY: libfiles

## add tmux configuration
tmux:
	curl -fsSL https://raw.githubusercontent.com/russelltsherman/tmux/main/bin/bootstrap | bash
.PHONY: tmux

## pull upstream changes
update: refresh-build-harness
	git pull
	make bootstrap
.PHONY: update

## add tmux configuration
vim:
	curl -fsSL https://raw.githubusercontent.com/russelltsherman/vim/main/bin/bootstrap | bash
.PHONY: vim

## add vscode configuration
vscode:
	curl -fsSL https://raw.githubusercontent.com/russelltsherman/vscode/main/bin/bootstrap | bash
.PHONY: vscode

## add zshell configuration
zsh:
	curl -fsSL https://raw.githubusercontent.com/russelltsherman/zsh/main/bin/bootstrap | bash
.PHONY: zsh

## addblocking hosts file from someonewhocares.org
/etc/hosts:
	sudo wget -O /etc/hosts https://someonewhocares.org/hosts/hosts
.PHONY: /etc/hosts

~/.%: # create symlink from ~/.dotfile and ./dotfiles/.dotfile
	cd ~ && ln -sv $(current_dir)/dotfiles/$(notdir $@) $@

~/bin: # ensure ~/bin dir exists
	mkdir ~/bin

~/bin/%: # create symlink form ~/bin/binscript and ./bin/binscript
	cd ~ && ln -sv $(current_dir)/bin/$(notdir $@) $@

~/lib: # ensure ~/lib dir exists
	mkdir ~/lib

~/lib/%: # create symlink form ~/lib/libfile and ./lib/libfile
	cd ~ && ln -sv $(current_dir)/lib/$(notdir $@) $@
