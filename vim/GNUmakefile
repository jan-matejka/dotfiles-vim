DEST=$(HOME)/.vim

.PHONY: build
build:

	$(MAKE) -C bundle

.PHONY: install
install:

	install -d $(DEST)
	cp -r $(CURDIR)/* $(DEST)

.PHONY: clean
clean:

	$(MAKE) -C bundle clean
