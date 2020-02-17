
Debian
====================
This directory contains files used to package coinlobbyd/coinlobby-qt
for Debian-based Linux systems. If you compile coinlobbyd/coinlobby-qt yourself, there are some useful files here.

## coinlobby: URI support ##


coinlobby-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install coinlobby-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your coinlobby-qt binary to `/usr/bin`
and the `../../share/pixmaps/coinlobby128.png` to `/usr/share/pixmaps`

coinlobby-qt.protocol (KDE)

