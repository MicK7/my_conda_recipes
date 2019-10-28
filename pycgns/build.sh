#!/bin/bash

export LD_LIBRARY_PATH="${PREFIX}/lib:${LD_LIBRARY_PATH}"
export INCLUDE_PATH="${PREFIX}/include:${INCLUDE_PATH}"

python setup.py build

python setup.py install --prefix=${PREFIX}
