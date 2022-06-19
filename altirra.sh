#!/bin/bash
export WINEPREFIX="$HOME"/.altirra/wine
if [ ! -d "$HOME"/.altirra ] ; then
   mkdir -p "$HOME"/.altira/wine
   wineboot -u
   regedit "/opt/altirra/firmware-setup.reg"
fi
WINEDEBUG=-all wine /opt/altirra/Altirra64.exe "$@"
