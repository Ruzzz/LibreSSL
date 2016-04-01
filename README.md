LibreSSL 2.3.3 static lib for msvc++
------------------------------------

Compile in MSVC++ 2015 with XP toolchain.
Based on http://ftp.openbsd.org/pub/OpenBSD/LibreSSL/libressl-2.3.3.tar.gz

See:

```
msvc2015 \
         \ LibreSSL.sln  
         \ crypto        \ 
         \ openssl       \ crypto.vcxproj
         \ ssl           \ openssl.vcxproj
         \ tls           \ ssl.vcxproj
         \               \ tls.vcxproj

lib      \               
         \ libcrypto.lib \
         \ libssl.lib    \
         \ libtls.lib    \

lib64    \               
         \ libcrypto.lib \
         \ libssl.lib    \
         \ libtls.lib    \

bin      \               
         \ openssl.exe   \
         \ openssl64.exe \

tests    \
         \ msvc2015      \
         \               \
```

Usage (ex.):

```
solution  \
          \ 3rd     \
          \         \ this_lib \
          \         \          \ include
          \         \          \ lib
          \         \          \ msvc2015
          \ include \
          \ src     \
          \         \

```