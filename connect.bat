@echo off
title Launch VMware Linux Server + Show Static IP
echo Starting Linux server VM...

REM VMware paths (adjust if needed)
set VMWARE_RUN="C:\Program Files (x86)\VMware\VMware Workstation\vmrun.exe"
set VM_PATH="D:\VM\ubuntu-master.vmx"

REM Start VM headless
%VMWARE_RUN% -T ws start %VM_PATH% nogui
echo VM started. Waiting 25 seconds for OS boot and network...
timeout /t 25 /nobreak >nul

REM Static IP of the VM
set SERVER_IP=[192.168.200.130]

echo.
echo ============================================
echo    Ubuntu Server is Running
echo    STATIC IP  →  %SERVER_IP%
echo ============================================
echo You can SSH using:
echo     ssh nithin-master@%SERVER_IP%
echo ============================================

pause
