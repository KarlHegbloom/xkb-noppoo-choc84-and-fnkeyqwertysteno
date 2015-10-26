
all:

PKGNAME = xkb-noppoo-choc84-and-fnkeyqwertysteno

PREFIX  ?= /usr
DESTDIR ?=

XKB_DIR = $(DESTDIR)$(PREFIX)/share/X11/xkb
DOC_DIR	= $(DESTDIR)$(PREFIX)/share/doc/$(PKGNAME)

# This is used for the sed command below so it must point into
# the real file system, not into the DESTDIR prefix. It must not be
# used as a target location for any "install" commands below.
DOC_HTML_DIR = $(PREFIX)/share/doc/$(PKGNAME)/html

steno-practice-start-page/steno-practice-start-page: steno-practice-start-page/steno-practice-start-page.in
	sed -e "s,DOC_HTML_DIR,$(DOC_HTML_DIR)," $< > $@

install: steno-practice-start-page/steno-practice-start-page
	mkdir -p -m 755 $(XKB_DIR)/geometry
	install  -m 644 xkb/geometry/noppoo $(XKB_DIR)/geometry
	mkdir -p -m 755 $(XKB_DIR)/symbols
	install  -m 644 xkb/symbols/fnkeyqwertysteno $(XKB_DIR)/symbols/fnkeyqwertysteno
	mkdir -p -m 755 $(XKB_DIR)/rules
	install  -m 644 xkb/rules/noppoo $(XKB_DIR)/rules/noppoo
	mkdir -p -m 755 $(DESTDIR)$(PREFIX)/bin
	install  -m 755 steno-practice-start-page/steno-practice-start-page $(DESTDIR)$(PREFIX)/bin
	mkdir -p -m 755 $(DESTDIR)$(PREFIX)/share/applications
	install  -m 755 steno-practice-start-page/steno-practice-start-page.desktop $(DESTDIR)$(PREFIX)/share/applications
	mkdir -p -m 755 $(DOC_DIR)/html/css
	install  -m 644 steno-practice-start-page/steno-practice-start-page.html $(DOC_DIR)/html
	install  -m 644 steno-practice-start-page/css/webfonts.css $(DOC_DIR)/html/css
	install  -m 644 steno-practice-start-page/css/main.css $(DOC_DIR)/html/css
	install  -m 644 choc84-evdev-us.pdf $(DOC_DIR)
	install  -m 644 choc84fnkeysteno-fnkeyqwertysteno.pdf $(DOC_DIR)

.PHONY: clean
clean:
	rm -f steno-practice-start-page/steno-practice-start-page
