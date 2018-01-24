DEST=$(HOME)/.vim

.PHONY: build
build:

	$(MAKE) -C bundle

.PHONY: install
install:

	rsync -av --delete ./ $(DEST)

.PHONY: clean
clean:

	$(MAKE) -C bundle clean
