REM %A for Command Line or %%A in Batch File

for /f %A in ('dir /b *.log *.txt') do (
"C:\Program Files\7-Zip\7z.exe" a -tzip "%A.zip" "%A"
DEL %A
)
