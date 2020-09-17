mkdir build_conda
cd build_conda

cmake -LAH                            \
    -DCMAKE_BUILD_TYPE=Release        \
    -DCMAKE_INSTALL_PREFIX=$PREFIX    \
    -DCMAKE_INSTALL_LIBDIR=lib        \
    -DCMAKE_CXX_FLAGS=$CXXFLAGS       \
    -DCMAKE_C_FLAGS=$CFLAGS           \
    ..


make -j${CPU_COUNT} VERBOSE=1
make install
