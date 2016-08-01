DEST=$(HOME)/.vim

build:

	$(MAKE) -C bundle

install:

	install -d $(DEST)
	cp -r $(CURDIR)/* $(DEST)

.PHONY: clean
clean:

	$(MAKE) -C bundle clean
