VERSION = $(shell grep Version: debian/DEBIAN/control | cut -d' ' -f2)

package: clean
	mkdir -p build
	dpkg-deb --root-owner-group --build debian build/mrhat-pkg_$(VERSION)-1_all.deb

clean:
	rm -rf build

.PHONY: all clean
