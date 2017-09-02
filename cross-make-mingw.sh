#!/bin/sh

# 32 and 64 bits builds of mingw for building 32 bits windows binaries
CMD_PREFIX="i586-mingw32msvc i686-w64-mingw32";

# Define CC to the correct (32 or 64 bits) version of mingw
for check in $CMD_PREFIX; do
	full_check="${check}-gcc"
	if [ ! $(which "$full_check") = "" ]; then
		export CC="$full_check"
		MINGW_VERSION=${check};
	fi
done

# Define WINDRES to the correct (32 or 64 bits) version of mingw
for check in $CMD_PREFIX; do
	full_check="${check}-windres"
	if [ ! $(which "$full_check") = "" ]; then
		export WINDRES="$full_check"
	fi
done

if [ "X$WINDRES" = "X" -o "X$CC" = "X" ]; then
    echo "Error: Must define or find WINDRES and CC"
    exit 1
fi

export PLATFORM=mingw32
export ARCH=x86

exec make $*
