-include $(shell curl -sSL -o .build-harness "https://raw.githubusercontent.com/opsbot/build-harness/main/templates/Makefile.build-harness"; echo .build-harness)

current_dir = $(shell pwd)
DOTFILE_NAMES := $(subst ./dotfiles/, , $(shell find ./dotfiles -maxdepth 1 -name ".*"))
DOTFILES := $(addprefix ~/, $(DOTFILE_NAMES))

## initialize project
bootstrap: \
	dotfiles \
	gitconfig
.PHONY: bootstrap

# clean symlinks of local dotfiles diretory from user home ~/
cleandotfiles:
	@for file in $(DOTFILE_NAMES) ; do if [ -L ~/$${file} ];then rm ~/$${file}; fi; done
.PHONY: cleandotfiles

# symlink contents of local dotfiles diretory into user home ~/
dotfiles: cleandotfiles $(DOTFILES)
.PHONY: dotfiles

## include our supplemental global gitconfig into users global gitconfig
gitconfig:
	# link .gitignore to global git config
	git config --global core.excludesfile ./.gitignore
	# link .gitconfig_globbal to global git config
	git config --global include.path ./.gitconfig_global
.PHONY: gitconfig

~/.%: # create symlink from ~/.dotfile and ./dotfiles/.dotfile
	cd ~ && ln -sv $(current_dir)/dotfiles/$(notdir $@) $@
