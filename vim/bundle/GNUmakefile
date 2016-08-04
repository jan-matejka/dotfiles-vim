PLUGINS=nerdtree YouCompleteMe

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

	git clone --depth 1 https://github.com/scrooloose/nerdtree
	$(RM) -r $@/.git

YouCompleteMe:

	git clone https://github.com/Valloric/YouCompleteMe
	cd $@ && git submodule update --init --recursive
	$(RM) -r $@/.git
	$@/install.py

.PHONY: clean
clean:

	$(RM) -r $(PLUGINS)
