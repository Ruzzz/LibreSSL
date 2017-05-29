call "%VS140COMNTOOLS%..\..\VC\bin\x86_amd64\vcvarsx86_amd64.bat"
msbuild /m /p:VisualStudioVersion=14.0 /t:build /p:Configuration=Debug LibreSSL.sln
msbuild /m /p:VisualStudioVersion=14.0 /t:build /p:Configuration=Release LibreSSL.sln