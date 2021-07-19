
hello: hello.c
	gcc -o hello hello.c

DESTDIR:=
PREFIX:=out
bindir:=$(DESTDIR)$(PREFIX)/bin
.PHONY: install
install: hello
	mkdir -p $(bindir)
	cp $^ $(bindir)

