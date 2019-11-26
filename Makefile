bin-dir=/usr/bin
man1-dir=/usr/share/man/man1

install-bin:
	@cp -f dood $(bin-dir)

install-man:
	@gzip -c man/man1/dood.1 > $(man1-dir)/dood.1.gz

install: install-bin install-man

uninstall:
	@rm $(bin-dir)/dood
	@rm $(man1-dir)/dood.1.gz
