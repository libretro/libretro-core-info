PREFIX := /usr
INSTALLDIR := $(PREFIX)/share/libretro/info

all:
	@echo "Nothing to make for libretro-core-info."

install:
	mkdir -p $(DESTDIR)$(INSTALLDIR)
	cp -a *.info $(DESTDIR)$(INSTALLDIR)

update:
	git clone git@github.com:libretro/libretro-super.git
	cp -f libretro-super/dist/info/*.info .

test-install: all
	DESTDIR=/tmp/build $(MAKE) install
