DEST=$(HOME)/.vim

.PHONY: build
build:

	$(MAKE) -C bundle

.PHONY: install
install:

	rsync -av --delete ./ $(DEST)
	install -m644 .vimrc $(HOME)/.vimrc

.PHONY: clean
clean:

	$(MAKE) -C bundle clean
