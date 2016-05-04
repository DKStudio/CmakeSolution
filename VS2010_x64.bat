@echo off
if not exist "C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\vcvarsall.bat" goto missing
call "C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\vcvarsall.bat" amd64
rd /S /Q VS2010_x64
mkdir VS2010_x64
cd VS2010_x64
cmake -G "Visual Studio 10 Win64" ..
pause

:missing
echo The specified configuration type is missing.  The tools for the
echo configuration might not be installed.
goto :eof