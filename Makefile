PREFIX = /usr/local
BINDIR = bin
DESTDIR =
LIBDIR = lib

clientdir = $(PREFIX)/$(LIBDIR)/Xweston

all: weston.ini

clean:
	rm -f weston.ini

install: all
	install -D -m755 Xweston $(DESTDIR)/$(PREFIX)/$(BINDIR)/Xweston
	install -D -m755 dummy-client $(DESTDIR)/$(clientdir)/dummy-client
	install -D -m644 weston.ini $(DESTDIR)/$(clientdir)/weston.ini

uninstall:
	rm -f $(DESTDIR)/$(PREFIX)/$(BINDIR)/Xweston
	rm -f $(DESTDIR)/$(clientdir)/dummy-client
	rm -f weston.ini $(DESTDIR)/$(clientdir)/weston.ini
	-rmdir $(DESTDIR)/$(clientdir)

release:

weston.ini: weston.ini.in
	sed -e "s|@clientdir@|$(clientdir)|g" < $< > $@

.PHONY: all clean install uninstall release
