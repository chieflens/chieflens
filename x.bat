@echo off
    taskkill /IM pageant.exe /F >nul
    start /b c:\AAA\putty\pageant C:\ZZZ\github\passport.xyz\privKey\user000.uppk
    copy %1 %2
    cd %2
    git add .
    git commit -m "%3" >nul
    git push
    echo(
    cd..
exit /b