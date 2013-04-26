#
# install FIPS Capable library
#

# move to Source dir
cd Source

# move to ssl' dir
cd openssl-1.0.1c/

# setup environment
. ../setenv-reset.sh
. ../setenv-ios-11.sh

FIPSDIR=/usr/local/ssl/Release-iphoneos

# install - may require root...
cp libssl.a $FIPSDIR
cp libcrypto.a $FIPSDIR

#ranlib $FIPSDIR/libssl.a
#ranlib $FIPSDIR/libcrypto.a


