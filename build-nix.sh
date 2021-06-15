#! /bin/bash -e
# Set the source and build directories for pycpphello.
SOURCE_DIR=`pwd`
BUILD_DIR="$SOURCE_DIR/build"

echo "[pycpphello] Building pycpphello in $BUILD_DIR"

if [ ! -d $BUILD_DIR ]
then
  mkdir $BUILD_DIR
  cd $BUILD_DIR

  echo "[pycpphello] ...Configuring using CMake..."
  cmake $SOURCE_DIR

  cd $SOURCE_DIR
fi

cd $BUILD_DIR

echo "[pycpphello] ...Running build..."
make -j2

echo "[pycpphello] ...Installing..."
make install

echo "[pycpphello] ...Finished building pycpphello, if you have not already, set up the python environment."
cd ..
