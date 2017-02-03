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