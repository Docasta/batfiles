@echo off
color 2
cd ..
cd ..

:loop
echo ===================CMD===================
echo Vs      : to start Visual Studio
echo Ws      : to start Wireshark
echo cmdvs   : to start CMD Visual Studio
echo listcm  : to list the commands
set /p cmd=%CD%^>
if "%cmd%"=="" goto loop

rem Komut kontrolü
if /I "%cmd%"=="Ws" (
    start "" "C:\Program Files\Wireshark\Wireshark.exe"
) else (
    if /I "%cmd%"=="Vs" (
        start "" "C:\Program Files\Microsoft Visual Studio\18\Community\Common7\IDE\devenv.exe"
    ) else (
        if /I "%cmd%"=="cmdvs" (
            start "" ""C:\Program Files\Microsoft Visual Studio\18\Community\Common7\Tools\VsDevCmd.bat""
        ) else (
            if /I "%cmd%"=="listcm" (
                echo Vs      : to start Visual Studio
                echo Ws      : to start Wireshark
                echo cmdvs   : to start CMD Visual Studio
                echo listcm  : to list the commands
            ) else (
                %cmd%
            )
        )
    )
)
goto loop
