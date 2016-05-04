@echo off
rd /S /Q Eclipse_MinGW
mkdir Eclipse_MinGW
cd Eclipse_MinGW
cmake -G "Eclipse CDT4 - MinGW Makefiles" -DCMAKE_BUILD_TYPE=Debug ..