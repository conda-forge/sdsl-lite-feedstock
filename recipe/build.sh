$SRC_DIR/install.sh "$PREFIX"

# Remove Google Test from the package to avoid clashes
rm "$PREFIX/lib/libgtest.a" "$PREFIX/lib/libgtest_main.a" "$PREFIX/lib/libgmock.a" "$PREFIX/lib/libgmock_main.a"
rm -r "$PREFIX/include/gtest/" "$PREFIX/include/gmock/"

echo "Making a test build including all headers"
cd $SRC_DIR/build
make compile-test
