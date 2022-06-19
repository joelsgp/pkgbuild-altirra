# Maintainer: jmcb <joelsgp@protonmail.com>
pkgname=altirra
pkgver=4.01
pkgrel=1
pkgdesc="Altirra emulator for Atari 8-bit computers, on Wine"
arch=('x86_64')
url="https://www.virtualdub.org/altirra.html"
license=('GPL2')
depends=('wine'
		'wine-mono')
provides=('altirra')
source=("https://www.virtualdub.org/downloads/Altirra-$pkgver.zip"
		"http://www.emulators.com/freefile/pcxf380.zip"
		"https://atariage.com/5200/roms/5200.zip"
		"altirra"
		"altirra.desktop"
		"altirra.png"
		"firmware-setup.reg")
noextract=("pcxf380.zip")
md5sums=("fd513ed987711433cdfd4d836fd2241e"
		"0225dc8bcf2e69fd30c12a226822222a"
		"481cc24c9500c887eca14bef9e203f24")
validpgpkeys=()

prepare() {
	unzip -fq pcxf380.zip ATARIBAS.ROM ATARIOSB.ROM ATARIXL.ROM
	mv 5200.rom 5200.ROM
}

package() {
	dest="${pkgdir}"/opt/${pkgname}
	# windows program files
	install -Dm644 -t "${dest}"/ Additions.atr Altirra.chm Altirra64.exe firmware-setup.reg
	# shell script
	install -m755 altirra "${dest}"/altirra
	# firmware roms
	install -Dm644 -t "${dest}"/roms/ 5200.ROM ATARIBAS.ROM ATARIOSB.ROM ATARIXL.ROM
	# desktop entry
	share="${pkgdir}"/usr/share
	install -Dm644 ${pkgname}.desktop "${share}"/applications/${pkgname}.desktop
	install -Dm644 ${pkgname}.png "${share}"/icons/${pkgname}.png
	# PATH symlink
	install -dm755 "${pkgdir}"/usr/bin/
	ln -s "${dest}"/altirra "${pkgdir}"/usr/bin/altirra
}
