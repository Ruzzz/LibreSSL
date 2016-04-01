set BIN_DIR=bin
set SRC_DIR=..

%BIN_DIR%\aeadtest %SRC_DIR%\aeadtests.txt
%BIN_DIR%\aes_wrap
%BIN_DIR%\asn1test
%BIN_DIR%\asn1time
%BIN_DIR%\base64test
%BIN_DIR%\bftest
%BIN_DIR%\biotest
%BIN_DIR%\bntest > nul
%BIN_DIR%\bytestringtest
%BIN_DIR%\casttest
%BIN_DIR%\chachatest
%BIN_DIR%\cipherstest
%BIN_DIR%\cipher_list
%BIN_DIR%\clienttest
%BIN_DIR%\cts128test
%BIN_DIR%\destest
%BIN_DIR%\dhtest > nul
%BIN_DIR%\dsatest > nul
%BIN_DIR%\ecdhtest
%BIN_DIR%\ecdsatest
%BIN_DIR%\ectest
%BIN_DIR%\enginetest
%BIN_DIR%\evptest %SRC_DIR%\evptests.txt > nul
%BIN_DIR%\poly1305test
%BIN_DIR%\pq_test
%BIN_DIR%\randtest
%BIN_DIR%\rc2test
%BIN_DIR%\rc4test
%BIN_DIR%\rmdtest
%BIN_DIR%\sha1test
%BIN_DIR%\sha256test
%BIN_DIR%\sha512test
%BIN_DIR%\ssltest
%BIN_DIR%\timingsafe
%BIN_DIR%\utf8test
%BIN_DIR%\verifytest

pause