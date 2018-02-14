PLUGINS =
PLUGINS += nerdtree
PLUGINS += YouCompleteMe
PLUGINS += vim-indent-guides
PLUGINS += tabular
PLUGINS += vim-pathogen
PLUGINS += tagbar
PLUGINS += highlight.vim
PLUGINS += vim-fugitive
PLUGINS += lh-vim-lib
PLUGINS += local_vimrc

BASE_CLONE=git clone --depth 1
RM_GIT_DIR=$(RM) -r $@/.git

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

vim-indent-guides:

	$(BASE_CLONE) git@github.com:nathanaelkane/vim-indent-guides.git
	$(RM_GIT_DIR)

tabular:

	$(BASE_CLONE) git://github.com/godlygeek/tabular.git
	$(RM_GIT_DIR)

vim-pathogen:

	$(BASE_CLONE) git://github.com/tpope/vim-pathogen.git
	$(RM_GIT_DIR)

tagbar:

	$(BASE_CLONE) git://github.com/majutsushi/tagbar.git
	$(RM_GIT_DIR)

highlight.vim:

	$(BASE_CLONE) git://github.com/vim-scripts/highlight.vim.git
	$(RM_GIT_DIR)

vim-fugitive:

	$(BASE_CLONE) git://github.com/tpope/vim-fugitive.git
	$(RM_GIT_DIR)

lh-vim-lib:

	$(BASE_CLONE) git://github.com/LucHermitte/$@.git
	$(RM_GIT_DIR)

local_vimrc:

	$(BASE_CLONE) git://github.com/LucHermitte/$@.git
	$(RM_GIT_DIR)

.PHONY: clean
clean:

	$(RM) -r $(PLUGINS)