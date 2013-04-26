#iOS-openSSL-FIPS

iOS-openSSL-FIPS is an open-source project that creates the iOS FIPS version of the openssl libraries: libssl.a and libcrypto.a 

## Build and Install

The build and install process is simple, just execute the build.sh script. The process will install the libraries into /usr/local/ssl/Release-iphoneos/.  

	/usr/local/ssl/Release-iphoneos/

		include/
		lib/
		bin/
		libssl.a
		libcrypto.a
  
**NOTE:** You may have to execute the build script with admin privileges e.g. sudo ./build.sh


## Xcode Example

In process of creating