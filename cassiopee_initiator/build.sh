#!/bin/bash

export LD_LIBRARY_PATH="${PREFIX}/lib:${LD_LIBRARY_PATH}"
export CPATH="${PREFIX}/include/KCore:${CPATH}"

./install ${PREFIX}
