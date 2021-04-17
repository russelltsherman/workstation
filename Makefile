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
	binscripts \
	dotfiles \
	gitconfig \
	libfiles
.PHONY: bootstrap

binscripts: ~/bin cleanbinscripts \
	$(BINSCRIPTS) # iterate our list of dotfiles and ensure they are symlinked
.PHONY: binscripts

cleanbinscripts: # if there are existing symlinks for our dotfiles in ~/ remove them
	@for file in $(BINSCRIPT_NAMES) ; do if [ -L ~/$${file} ];then rm ~/$${file}; fi; done
.PHONY: cleanbinscripts

# clean symlinks of local dotfiles diretory from user home ~/
cleandotfiles:
	@for file in $(DOTFILE_NAMES) ; do if [ -L ~/$${file} ];then rm ~/$${file}; fi; done
.PHONY: cleandotfiles

cleanlibfiles: # if there are existing symlinks for our dotfiles in ~/ remove them
	@for file in $(LIBFILE_NAMES) ; do if [ -L ~/$${file} ];then rm ~/$${file}; fi; done
.PHONY: cleanlibfiles

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

libfiles: ~/lib cleanlibfiles \
	$(LIBFILES) # iterate our list of dotfiles and ensure they are symlinked
.PHONY: libfiles

~/.%: # create symlink from ~/.dotfile and ./dotfiles/.dotfile
	cd ~ && ln -sv $(current_dir)/dotfiles/$(notdir $@) $@

~/bin:
	mkdir ~/bin

~/bin/%: # create symlink form ~/bin/binscript and ./bin/binscript
	cd ~ && ln -sv $(current_dir)/bin/$(notdir $@) $@

~/lib:
	mkdir ~/lib

~/lib/%: # create symlink form ~/lib/libfile and ./lib/libfile
	cd ~ && ln -sv $(current_dir)/lib/$(notdir $@) $@
