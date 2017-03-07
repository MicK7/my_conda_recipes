#!/bin/bash

#export LD_LIBRARY_PATH="${PREFIX}/lib:${LD_LIBRARY_PATH}"

scons

#scons tests | tee /dev/stderr | grep FAILED > bad_results
#if [ -s bad_results ] ;
#then
#   echo "Exit on tests FAILED"
#   exit 1
#else 
#   echo "Tests success"
#fi

scons install root=${PREFIX}
