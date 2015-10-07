echo off
SET /a i=0
:loop
IF %i%==60 GOTO END
echo This is cycle number %i%.
Start "c:\Program Files (x86)\Notepad++\" notepad++.exe
TIMEOUT /T 2
taskkill /F /IM notepad++.exe
SET /a i=%i%+1
GOTO LOOP

:end
echo Test Completed