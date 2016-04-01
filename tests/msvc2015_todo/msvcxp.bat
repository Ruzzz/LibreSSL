:: or %ProgramFiles(x86)%
set _SDK71PATH_=%ProgramFiles%\Microsoft SDKs\Windows\7.1A
set PATH=%_SDK71PATH_%\Bin;%PATH%
set INCLUDE=%_SDK71PATH_%\Include;%INCLUDE%
set LIB=%_SDK71PATH_%\Lib;%LIB%
set CL=/D_USING_V110_SDK71_ %CL%
set LINK=/SUBSYSTEM:CONSOLE,5.01 %LINK%
