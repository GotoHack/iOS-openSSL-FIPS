#
# build FIPS Object Module
#

# move to Source dir
cd Source

# delete old artifacts
rm -Rf openssl-fips-2.0.1/

# make incore_macho available to build
export PATH="$HOME/bin":$PATH

# unpack fresh files
tar xzf openssl-fips-2.0.1.tar 
tar xzf ios-incore-2.0.1.tar

# move to fips' dir
cd openssl-fips-2.0.1

# setup environment
. ../setenv-reset.sh
. ../setenv-ios-11.sh

# verify paths set by darwin script
env

# configure include iOS SDK PATHS
IPHONE_SDK=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS6.1.sdk
export IPHONE_SDK
C_INCLUDE_PATH=$IPHONE_SDK/usr/include
CPLUS_INCLUDE_PATH=$C_INCLUDE_PATH

export C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH

# configure and make
./config
make


