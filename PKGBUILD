# Maintainer: jmcb <joelsgp@protonmail.com>
pkgname=altirra
pkgver=4.01
pkgrel=1
epoch=
pkgdesc="Altirra emulator for Atari 8-bit computers, on Wine"
arch=('x86_64')
url="https://www.virtualdub.org/altirra.html"
license=('GPL2')
depends=('wine')
makedepends=('sed')
backup=()
install=
source=("https://www.virtualdub.org/downloads/Altirra-$pkgver.zip"
		"http://www.emulators.com/freefile/pcxf380.zip"
		"https://atariage.com/5200/roms/5200.zip")
md5sums=("fd513ed987711433cdfd4d836fd2241e"
		"0225dc8bcf2e69fd30c12a226822222a"
		"481cc24c9500c887eca14bef9e203f24")
validpgpkeys=()

prepare() {
	cd "$pkgname-$pkgver"
	sed "s/{version}/$pkgver/g" $pkgname.desktop
	sed "s/{name}/$pkgname/g" $pkgname.desktop
}

package() {
	cd "$pkgname-$pkgver"
	dest=~/.local/share/$pkgname
	mkdir $dest
	cp -t $dest Additions.atr Altirra.chm Altirra.exe Altirra64.exe
	cp -r extras/ $dest
	romsdir = $dest/roms
	mkdir $romsdir
	cp -t $romsdir 5200.ROM ATARIBAS.ROM ATARIAOSB.ROM ATARIXL.ROM
	cp $pkgname.desktop ~/.local/share/applications
}
