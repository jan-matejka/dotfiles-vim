PLUGINS=nerdtree YouCompleteMe

BASE_CLONE=git clone --depth 1
RM_GIT_DIR=$(RM) -r $@/.git

# Plugins that used to be modules:
# git://github.com/tpope/vim-fugitive.git
# git@github.com:nathanaelkane/vim-indent-guides.git
# git://github.com/godlygeek/tabular.git
# git://github.com/vim-scripts/highlight.vim.git
# git://github.com/scrooloose/nerdcommenter.git
# git://github.com/scrooloose/nerdtree.git
# git://github.com/tpope/vim-pathogen.git
# git://github.com/vim-scripts/Pydiction.git
# git://github.com/kevinw/pyflakes-vim.git
# git://github.com/vim-scripts/snippetsEmu.git
# https://github.com/vim-scripts/sort-python-imports
# git://github.com/majutsushi/tagbar.git
# git://repo.or.cz/vcscommand

.PHONY: build
build: $(PLUGINS)

nerdtree:

	$(BASE_CLONE) https://github.com/scrooloose/nerdtree
	$(RM_GIT_DIR)

YouCompleteMe:

	git clone https://github.com/Valloric/YouCompleteMe
	cd $@ && git submodule update --init --recursive
	$(RM) -r $@/.git
	$@/install.py

.PHONY: clean
clean:

	$(RM) -r $(PLUGINS)
