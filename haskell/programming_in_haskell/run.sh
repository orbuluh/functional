#!/bin/sh
build_folder=tmp_build
latest_src=$(ls -a1 src/*.hs | tail -n 1)

cmd="ghc -o $build_folder/latest_exe -outputdir $build_folder $latest_src"
echo $cmd

eval $cmd
ret_val=$?

if [ $ret_val -eq 0 ]; then
    ls -lt $build_folder/latest_exe
    rm $build_folder/*.hi
    rm $build_folder/*.o
fi
