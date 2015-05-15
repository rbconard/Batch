@echo off
Rem Get Day,Mth & Year from %Date%

SETLOCAL
set Day=%Date:~7,2%
set Mth=%Date:~4,2%
set Yr=%Date:~10,4%
set Hr=%Time:~0,2%
set Mm=%Time:~3,2%
set Zone=%1
set filename=%Yr%-%Mth%-%Day%-%Hr%%Mm%-DNS.zone
set filepath=C:\DNS\Backups

:: batch file that exports DNS servers settings

dnscmd %ComputerName% /zoneexport %Zone% %filename%
IF NOT EXIST %filepath%\%ComputerName% mkdir %filepath%\%ComputerName%
move c:\windows\system32\dns\%filename% "%filepath%\%ComputerName%\%Zone%-%filename%"

ENDLOCAL
