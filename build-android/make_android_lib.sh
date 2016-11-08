#!/bin/sh
rm -rf obj
/home/share/fujiafeng/android-ndk-r8/ndk-build $1 NDK_MODULE_PATH=`pwd`
cp -f ./obj/local/armeabi/libjson.a ../lib/android/
