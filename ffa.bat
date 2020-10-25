@echo off
color c
tasklist /FI "IMAGENAME eq xampp-control.exe" 2>NUL | find /I /N "xampp-control.exe">NUL
if NOT "%ERRORLEVEL%" == "0" start "" "C:\xampp\xampp-control.exe"
TASKKILL /PID xampp-control.exe
TASKKILL /PID xampp-control.exe
cls
echo ===========================================================================
echo =                                                                         =
echo =                 Startting FFA Made By Alokas66#6666                     =
echo =                                                                         =
echo ===========================================================================
echo FFA starts in 10 seconds
TIMEOUT /T 10
cls
cd %~dp0\FFA
echo FFA Started
run.cmd +exec server.cfg
pause >nul