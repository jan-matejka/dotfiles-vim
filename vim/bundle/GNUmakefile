.PHONY: build
build: nerdtree

nerdtree:

	git clone --depth 1 https://github.com/scrooloose/nerdtree
	$(RM) -r $@/.git

.PHONY: clean
clean:

	$(RM) -r nerdtree
