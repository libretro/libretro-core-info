DESTDIR := /tmp/libretro-core-info

all:
	@echo "Nothing to make for libretro-core-info."

install:
	mkdir -p $(DESTDIR)
	cp -ar *.info $(DESTDIR)

update:
	git clone git@github.com:libretro/libretro-super.git
	cp -f libretro-super/dist/info/*.info .
