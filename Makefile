DESTDIR := /tmp/libretro-core-info

all:
	@echo "Nothing to make for libretro-core-info."

install:
	mkdir -p $(DESTDIR)
	cp -ar *.info $(DESTDIR)

update:
	rm -rf libretro-super
	git clone git@github.com:libretro/libretro-super.git
	rm -rf *.info
	cp -f libretro-super/dist/info/*.info .
