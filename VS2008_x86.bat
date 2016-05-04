@echo off
if not exist "C:\Program Files (x86)\Microsoft Visual Studio 9.0\VC\vcvarsall.bat" goto missing
call "C:\Program Files (x86)\Microsoft Visual Studio 9.0\VC\vcvarsall.bat"
rd /S /Q VS2008_x86
mkdir VS2008_x86
cd VS2008_x86
cmake -G "Visual Studio 9 2008" ..

:missing
echo The specified configuration type is missing.  The tools for the
echo configuration might not be installed.
goto :eof