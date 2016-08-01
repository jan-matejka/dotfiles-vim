PLUGINS=nerdtree YouCompleteMe

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
