#!/bin/bash
mkdir build
cd build

export LDFLAGS="-L${PREFIX}/lib $LDFLAGS"
export CPATH="${PREFIX}/include"

if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  DYNAMIC_EXT="so"
fi
if [ "$(uname -s)" == "Darwin" ]; then
  DYNAMIC_EXT="dylib"
fi

if [ $PY3K -eq 1 ]; then
  export PY_STR="${PY_VER}m"
else
  export PY_STR="${PY_VER}"
fi

cmake -LAH .. \
-DCMAKE_INSTALL_PREFIX=${PREFIX} \
-DCGNS_BUILD_CGNSTOOLS=ON \
-DCGNS_BUILD_SHARED=ON \
-DCGNS_ENABLE_64BIT=ON \
-DCGNS_ENABLE_HDF5=ON \
-DCGNS_USE_SHARED=ON \
-DCMAKE_BUILD_TYPE=Release

make -j$CPU_COUNT
make install
