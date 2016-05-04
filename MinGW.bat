@echo off
rd /S /Q MinGW
mkdir MinGW
cd MinGW
cmake -G "MinGW Makefiles" ..
pause