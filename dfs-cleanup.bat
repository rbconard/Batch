h:\sysinternals.live\pskill dfsrs.exe
h:\sysinternals.live\pskill dfssvc.exe
f:
::cd "F:\System Volume Information\DFSR\Private\{F385C8D7-D600-49BD-8ABA-378C9F9FB375}-{8D3FB5E5-776E-4D0D-A578-4A4AF186B768}"
::cd "F:\System Volume Information\DFSR\Private\{F385C8D7-D600-49BD-8ABA-378C9F9FB375}-{349A7760-2C96-4284-8CBB-9C5610257C8B}"
::cd "F:\System Volume Information\DFSR\Private\{F385C8D7-D600-49BD-8ABA-378C9F9FB375}-{4F7418BA-7750-4387-8A3B-1FA52CE88D97}"
::cd "F:\System Volume Information\DFSR\Private\{F385C8D7-D600-49BD-8ABA-378C9F9FB375}-{16BF8E0E-2804-495B-8269-AECB925AEFF8}"
set dfs=dir "f:\system volume information\dfsr\private\{F3*" /b
cd "\system volume information\dfsr\private\"
cd %DFS%
rmdir Staging /s /q
rmdir Installing /s /q
rmdir ConflictAndDeleted /s /q
rmdir Deleted /s /q
net start dfs
net start dfsr
h: