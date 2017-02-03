LibreSSL 2.3.3 static lib for msvc++
------------------------------------

Compile in MSVC++ 2015.
Based on http://ftp.openbsd.org/pub/OpenBSD/LibreSSL/libressl-2.3.3.tar.gz

See:

```
bin\
    openssl.exe
    openssl64.exe

include\
    openssl_link_libs.cpp

lib\
    libcrypto32MT.lib
    libssl32MT.lib
    libtls32MT.lib
    libcrypto32MTd.lib
    libssl32MTd.lib
    libtls32MTd.lib
    libcrypto64MT.lib
    libssl64MT.lib
    libtls64MT.lib
    libcrypto64MTd.lib
    libssl64MTd.lib
    libtls64MTd.lib

vs2015\
    LibreSSL.sln
    crypto\crypto.vcxproj
    openssl\openssl.vcxproj
    ssl\ssl.vcxproj
    tls\tls.vcxproj

tests\
    msvc2015\
```

openssl_link_libs.cpp

```
// Link OpenSSL libs
#ifdef _DEBUG
#  ifdef _WIN64
#    pragma comment(lib, "libcrypto64MTd.lib")
#    pragma comment(lib, "libssl64MTd.lib")
#  else // WIN32
#    pragma comment(lib, "libcrypto32MTd.lib")
#    pragma comment(lib, "libssl32MTd.lib")
#  endif
#else // RELEASE
#  ifdef _WIN64
#    pragma comment(lib, "libcrypto64MT.lib")
#    pragma comment(lib, "libssl64MT.lib")
#  else // WIN32
#    pragma comment(lib, "libcrypto32MT.lib")
#    pragma comment(lib, "libssl32MT.lib")
#  endif
#endif
```