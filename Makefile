
hello: hello.c
	gcc -o hello hello.c

DESTDIR:=
PREFIX:=/usr/local
bindir:=$(DESTDIR)$(PREFIX)/bin
.PHONY: install
install: hello
	mkdir -p $(bindir)
	cp $^ $(bindir)

