@echo off
chcp 65001 > nul
set BIN=bin
set SRC=..
:: rd /s /q %BIN% > nul
md %BIN% 2> nul
call :INIT_BUILD

:: TODO call :RUN_TEST %SRC%\explicit_bzero.c %SRC%\memmem.c
:: TODO call :RUN_TESTS arc4randomforktest.c optionstest.c pidwraptest.c pkcs7test.c rfc5280time.c
call :RUN_TESTS aeadtest.c aes_wrap.c asn1test.c asn1time.c base64test.c bftest.c biotest.c bntest.c bytestringtest.c casttest.c chachatest.c cipherstest.c cipher_list.c clienttest.c cts128test.c destest.c dhtest.c dsatest.c ecdhtest.c ecdsatest.c ectest.c enginetest.c evptest.c exptest.c gcm128test.c gost2814789t.c hmactest.c ideatest.c igetest.c md4test.c md5test.c mont.c pbkdf2.c poly1305test.c pq_test.c randtest.c rc2test.c rc4test.c rmdtest.c sha1test.c sha256test.c sha512test.c ssltest.c timingsafe.c utf8test.c verifytest.c
goto :END



:RUN_TESTS
if (%1)==() goto :EOF
call :RUN_TEST %SRC%\%1
shift
goto :RUN_TESTS



:RUN_TEST
@echo on
cl.exe /nologo %* /link /nologo /out:%BIN%\%~n1.exe"
@echo off
if errorlevel 1 goto :ERROR
echo --- Done: %~n1
goto :NOERROR
:ERROR
echo --- Error: %~n1
:NOERROR
echo.
goto :EOF



:INIT_BUILD
:: or %VSnn0COMNTOOLS%
call "%VS140COMNTOOLS%\vsvars32.bat"
:: XP ToolChain
call msvcxp.bat
::
set INCLUDE=..\..\apps\openssl;%INCLUDE%
set INCLUDE=..\..\apps\openssl\compat;%INCLUDE%
set INCLUDE=..\..\crypto\modes;%INCLUDE%
set INCLUDE=..\..\crypto\asn1;%INCLUDE%
set INCLUDE=..\..\include;%INCLUDE%
set INCLUDE=..\..\include\compat;%INCLUDE%
set INCLUDE=..\..\ssl;%INCLUDE%
set LIB=..\..\lib;%LIB%
set CL=/W3 /O2 /Oi /GL /GF /GS /MT /EHsc %CL%
set CL=/D LIBRESSL_INTERNAL /D _CRT_SECURE_NO_WARNINGS /D "NDEBUG" %CL%
set LINK=/LTCG /OPT:REF /OPT:ICF /DYNAMICBASE /NXCOMPAT /SAFESEH %LINK%
set LINK=libcrypto.lib libssl.lib libtls.lib ws2_32.lib %LINK%
goto :EOF



:END
del *.obj
pause