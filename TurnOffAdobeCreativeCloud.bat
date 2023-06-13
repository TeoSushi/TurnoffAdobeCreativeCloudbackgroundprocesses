@echo off
chcp 65001
Color f0
title Optimizing Windows - Facebook: fb.com/boboiboy.gala.7 [Hoàng Việt Quang (Tèo Sushi)]
cls

::Kiểm tra quyền Quản trị viên
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
 pushd "%CD%"
    CD /D "%~dp0"
cls 

::Kiểm tra quyền Quản trị viên một lần nữa 
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Chương trình đang chạy với quyền quản trị viên.
) else (
    echo Chương trình phải được chạy với quyền quản trị viên.
    echo Vui lòng đóng và mở lại tệp lệnh bằng cách chuột phải vào tệp và chọn "Run as Administrator" hoặc "Chạy với quyền quản trị viên".
    pause >nul
    exit
)


::Intro (Source: Ghost Spectre)
:TeoSushi
cls && color 08
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a")
<nul set /p=""
call :PainText 03 "                             P"
call :PainText 03 " o"
call :PainText 03 " w"
call :PainText 03 " e"
call :PainText 03 " r"
call :PainText 03 " e"
call :PainText 03 " d"
call :PainText 03 "    b"
call :PainText 03 " y"
call :PainText 0D "    T"
call :PainText 0D "  E"
call :PainText 0D "  O"
call :PainText 0D "    S"
call :PainText 0D "  U"
call :PainText 0D "  S"
call :PainText 0D "  H"
call :PainText 0D "  I"
timeout /t 3 >nul
color f0
cls
goto :end
:PainText
<nul set /p "=%DEL%" > "%~2"
findstr /v /a:%1 /R "+" "%~2" nul
del "%~2" > nul
goto :eof
:end
echo.
@echo off
:: NORMAL FOREG COLORS
set nhcolor=
set Black=%nhcolor%[30m
set Red=%nhcolor%[31m
set Green=%nhcolor%[32m
set Yellow=%nhcolor%[33m
set Blue=%nhcolor%[33m
set Magenta=%nhcolor%[35m
set Cyan=%nhcolor%[36m
set White=%nhcolor%[37m
set Lightgray=%nhcolor%[37m
:: STRONG FOREG COLORS
set SWhite=%nhcolor%[90m
set SRed=%nhcolor%[91m
set SGreen=%nhcolor%[92m
set SYellow=%nhcolor%[93m
set SBlue=%nhcolor%[94m
set SMagenta=%nhcolor%[95m
set SCyan=%nhcolor%[96m
set SWhite=%nhcolor%[97m
:: NORMALBACKGROUND
set NBlack=%nhcolor%[40m
set NRed=%nhcolor%[41m
set NGreen=%nhcolor%[42m
set NYellow=%nhcolor%[43m
set NBlue=%nhcolor%[44m
set NMagenta=%nhcolor%[45m
set NCyan=%nhcolor%[46m
set NWhite=%nhcolor%[47m
:: STRONGBACKGROUND
set BBlack=%nhcolor%[100m
set BRed=%nhcolor%[101m
set BGreen=%nhcolor%[102m
set BYellow=%nhcolor%[103m
set BBlue=%nhcolor%[104m
set BMagenta=%nhcolor%[105m
set BCyan=%nhcolor%[106m
set BWhite=%nhcolor%[107m
:: STYLE
set Green=%nhcolor%[32m
set White=%nhcolor%[37m
set Cyan=%nhcolor%[36m
set Magenta=%nhcolor%[35m
set Red=%nhcolor%[31m
set Yellow=%nhcolor%[33m
set Lightgray=%nhcolor%[37m
set Bold=%nhcolor%[1m

taskkill /f /im "Creative Cloud.exe"
taskkill /f /im "Adobe Desktop Service.exe"
taskkill /f /im "Adobe Crash Reporter.exe"
taskkill /f /im "CCXProcess.exe"
taskkill /f /im "AdobeIPCBroker.exe"
taskkill /f /im "AdobeNotificationClient.exe"
taskkill /f /im "Adobe Desktop Service.exe"
taskkill /f /im "Adobe Update Service.exe"
taskkill /f /im "Adobe CCXProcess.exe"
taskkill /f /im "Adobe Acrobat Update Service.exe"
taskkill /f /im "AGMService.exe"
taskkill /f /im "AGSService.exe"
taskkill /f /im "Adobe Genuine Software Integrity Service.exe"
taskkill /f /im "CoreSync.exe"
taskkill /f /im "AdobeIPCBroker.exe"
taskkill /f /im "CCLibrary.exe"
taskkill /f /im "Creative Cloud Helper.exe"
taskkill /f /im "AdobeIPCBroker.exe"

echo All Adobe Creative Cloud applications have been closed.
exit
