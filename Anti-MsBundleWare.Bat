@echo off
setlocal EnableDelayedExpansion

:Initialization
echo Init: Start
timeout /t 1 >nul

:: Check if running as administrator
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Error: Admin Required
    echo Notice: Run as Admin
    timeout /t 2 >nul
    goto end_of_script
)
echo Status: Administrator
timeout /t 1 >nul
goto main

:main
echo Task: Disable Meet Now
timeout /t 1 >nul

:: Disable Meet Now via Registry (CurrentVersion Policy)
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v HideSCAMeetNow /t REG_DWORD /d 1 /f >nul 2>&1
if %errorLevel% neq 0 (
    echo Error: Reg Write Fail
    timeout /t 3 >nul
) else (
    echo Success: Reg Updated
)

:: Disable Meet Now icon via Group Policy (Explorer)
echo Task: Hide Icon
timeout /t 1 >nul
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v HideSCAMeetNow /t REG_DWORD /d 1 /f >nul 2>&1
if %errorLevel% neq 0 (
    echo Error: Icon Hide Fail
    timeout /t 3 >nul
) else (
    echo Success: Icon Hidden
)

:: Terminate the Meet Now process if it is running
echo Task: Kill MeetNow
timeout /t 1 >nul
taskkill /F /IM MeetNow.exe >nul 2>&1
if %errorLevel% neq 0 (
    echo Error: Kill Fail
    timeout /t 3 >nul
) else (
    echo Success: MeetNow Killed
)

echo Task: Verify Icon Gone
timeout /t 1 >nul
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v HideSCAMeetNow >nul 2>&1
if %errorLevel% neq 0 (
    echo Error: Verify Fail
    timeout /t 3 >nul
) else (
    echo Success: Verified
)

goto end_of_script

:end_of_script
echo --------------------------------------
echo Status: Complete
pause
exit /b
