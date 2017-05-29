:: WARN: run as admin
:: Add system env var OPENSSL_DIR=full_path\

call :INIT "%~dp0.."
pause
goto :eof

:INIT
setx /m OPENSSL_DIR "%~dpn1\\"