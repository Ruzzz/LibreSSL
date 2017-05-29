call "%VS140COMNTOOLS%\vsvars32.bat"
msbuild /m /p:VisualStudioVersion=14.0 /t:build /p:Configuration=Debug LibreSSL.sln
msbuild /m /p:VisualStudioVersion=14.0 /t:build /p:Configuration=Release LibreSSL.sln