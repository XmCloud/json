#!/bin/sh
rm -rf obj
#/home/share/fujiafeng/android-ndk-r8/ndk-build $1 NDK_MODULE_PATH=`pwd`
/home/fujiafeng/android_tools/android-ndk-r10e/ndk-build $1 NDK_MODULE_PATH=`pwd`
cp -f ./obj/local/armeabi/libjson.a ../lib/android/armeabi/
cp -f ./obj/local/armeabi-v7a/libjson.a ../lib/android/armeabi-v7a/
cp -f ./obj/local/arm64-v8a/libjson.a ../lib/android/arm64-v8a/
cp -f ./obj/local/mips/libjson.a ../lib/android/mips/
cp -f ./obj/local/mips64/libjson.a ../lib/android/mips64/
cp -f ./obj/local/x86/libjson.a ../lib/android/x86/
cp -f ./obj/local/x86_64/libjson.a ../lib/android/x86_64/
