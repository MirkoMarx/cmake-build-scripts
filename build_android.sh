#!/bin/bash

JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
ANDROID_SDK_HOME=${HOME}/Android/Sdk
ANDROID_NDK_HOME=${ANDROID_SDK_HOME}/ndk-bundle
CMAKE=${ANDROID_SDK_HOME}/cmake/3.10.2.4988404/bin
ANDROID_API_LEVEL=26
QT_PATH=${HOME}/Qt/5.14.0/android
MAKE_PROGRAM=${CMAKE}/ninja
#ANDROID_ABI=arm64-v8a
ANDROID_ABI=armeabi-v7a
#ANDROID_ABI=x86
#ANDROID_ABI=x86_64

if [ ! -d "build_android" ]; then
  mkdir build_android
  cd build_android
  ${CMAKE}/cmake \
	-GNinja \
	-DCMAKE_BUILD_TYPE=Release \
	-DCMAKE_TOOLCHAIN_FILE=${ANDROID_NDK_HOME}/build/cmake/android.toolchain.cmake \
	-DCMAKE_SYSTEM_NAME=Android \
	-DCMAKE_SYSTEM_VERSION=${ANDROID_API_LEVEL} \
	-DCMAKE_ANDROID_ARCH_ABI=${ANDROID_ABI} \
	-DANDROID_NATIVE_API_LEVEL=${ANDROID_API_LEVEL} \
	-DCMAKE_PREFIX_PATH=${QT_PATH} \
	-DCMAKE_FIND_ROOT_PATH=${QT_PATH} \
	-DCMAKE_ANDROID_ARM_NEON=ON \
	-DANDROID_ABI=${ANDROID_ABI} \
	-DCMAKE_MAKE_PROGRAM=${MAKE_PROGRAM} \
	-DANDROID_TOOLCHAIN=clang \
	../$1
  cd ..
fi

cd build_android
${MAKE_PROGRAM}
#${MAKE_PROGRAM} install
cd ..
