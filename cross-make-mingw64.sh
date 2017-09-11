#!/bin/sh

# 32 and 64 bits builds of mingw for building 64 bits windows binaries
CMD_PREFIX="amd64-mingw32msvc x86_64-w64-mingw32";

# Define CC and WINDRES to the correct (32 or 64 bits) version of mingw
for check in $CMD_PREFIX; do
	gcc_check="${check}-gcc"
	if [ ! $(which "$gcc_check") = "" ]; then
		export CC="$gcc_check"
	fi
	
	windres_check="${check}-windres"
	if [ ! $(which "$windres_check") = "" ]; then
		export WINDRES="$windres_check"
	fi
done

if [ "X$WINDRES" = "X" -o "X$CC" = "X" ]; then
    echo "Error: Must define or find WINDRES and CC"
    exit 1
fi

export PLATFORM=mingw32
export ARCH=x64

exec make $*
